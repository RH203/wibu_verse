import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wibu_verse/app_logger.dart';
import 'package:wibu_verse/core/common/widget/button/app_button.dart';
import 'package:wibu_verse/core/common/widget/dialogs/dialogs.dart';
import 'package:wibu_verse/core/common/widget/text_field/app_text_field.dart';
import 'package:wibu_verse/core/di/injection.dart';
import 'package:wibu_verse/core/utils/helper_validator/helper_validator.dart';
import 'package:go_router/go_router.dart';
import 'package:wibu_verse/src/auth/controller/auth_controller.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  Future<void> _onTap() async {
    try {
      final _authController = AuthController();
      bool _isAuthValid = _form.currentState!.validate();
      bool? result;

      AppDialogs.showLoadingDialog(context);

      if (_isAuthValid) {
        result = await _authController.login(_email.text, _password.text);
        if (result) {
          User? _user = getIt<FirebaseAuth>().currentUser;
          if (mounted) {
            context.pop();
            AppDialogs.showMessageDialog(
                context,
                "You have successfully logged in. Welcome back! ${_user!.displayName}",
                "Login Successful",
                "/home-screen");
          }
        } else {
          if (mounted) {
            context.pop();
            AppDialogs.showErrorMessageDialog(
              context,
              "The email or password you entered is incorrect. Please try again.",
              "Login Failed",
            );
          }
        }
      }
    } catch (error) {
      AppLogger.error("Error occured on [Sign up screen]: $error");
      if (mounted) {
        context.pop();
        AppDialogs.showErrorMessageDialog(
          context,
          error,
          "Oops. Something wrong",
        );
      }
    } finally {
      _email.clear();
      _password.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.go('/onboard-screen'),
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Form(
            key: _form,
            child: ListView(
              children: [
                // Title
                _buildTitle(),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 25),
                  child: const Text(
                    "Login to Your Account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                // Form
                const SizedBox(
                  height: 100,
                ),
                AppTextField(
                  controller: _email,
                  validator: HelperValidator.validateEmail,
                  hintText: 'example@example.com',
                  label: 'email',
                  prefixIcon: const Icon(Icons.email),
                  keyboardType: TextInputType.emailAddress,
                  autoCorrect: false,
                  textCapitalization: TextCapitalization.none,
                  isPassword: false,
                ),
                const SizedBox(height: 15),
                AppTextField(
                  controller: _password,
                  validator: HelperValidator.validateMinLength8,
                  hintText: 'Enter your password',
                  label: 'Password',
                  prefixIcon: const Icon(Icons.password),
                  keyboardType: TextInputType.text,
                  autoCorrect: false,
                  textCapitalization: TextCapitalization.none,
                  isPassword: true,
                ),
                // Button
                const SizedBox(
                  height: 100,
                ),
                AppButton(
                  title: "Sign in",
                  onTap: _onTap,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: RichText(
                    textAlign: TextAlign.end,
                    text: TextSpan(
                      text: "Don\'t have any account? ",
                      style: const TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sign Up',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => context.go('/sign-up'),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  RichText _buildTitle() {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'Wibu',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'Verse',
            style: TextStyle(
              color: Colors.red,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
