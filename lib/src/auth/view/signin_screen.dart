import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wibu_verse/app_logger.dart';
import 'package:wibu_verse/core/common/widget/button/app_button.dart';
import 'package:wibu_verse/core/common/widget/text_field/app_text_field.dart';
import 'package:wibu_verse/core/utils/helper_validator/helper_validator.dart';

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

  @override
  Widget build(BuildContext context) {
    final _bottomInsets = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 20,
          top: 20,
          right: 20,
          bottom: _bottomInsets + 20,
        ),
        child: CustomScrollView(
          slivers: [
            _buildTitleSlivers(),
            _buildFromSlivers(),
            _buildButtonSlivers(context)
          ],
        ),
      ),
    );
  }

  SliverPadding _buildButtonSlivers(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 150),
      sliver: SliverToBoxAdapter(
        child: Column(
          children: [
            AppButton(
              title: "Login",
              onTap: () {
                _form.currentState!.validate();
                AppLogger.debug("${_form.currentState}");
              },
            ),
            const Divider(),
            RichText(
              text: TextSpan(
                text: "Don\'t have any account? ",
                style: const TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Sign In',
                    style: const TextStyle(color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('TextButton clicked!'),
                          ),
                        );
                      },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  SliverPadding _buildFromSlivers() {
    return SliverPadding(
      padding: const EdgeInsets.only(top: 100),
      sliver: SliverToBoxAdapter(
        child: Form(
          key: _form,
          child: Column(
            children: [
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
            ],
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildTitleSlivers() {
    return SliverToBoxAdapter(
      child: Column(
        children: [
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
        ],
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
