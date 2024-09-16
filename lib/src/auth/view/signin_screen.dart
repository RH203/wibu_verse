import 'package:flutter/material.dart';
import 'package:wibu_verse/core/common/widget/button/app_button.dart';
import 'package:wibu_verse/core/common/widget/text_field/app_text_field.dart';
import 'package:wibu_verse/core/utils/helper_validator/helper_validator.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 40),
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
            const SizedBox(height: 40),
            AppTextField(
              controller: _email,
              validator: HelperValidator.validateEmail,
              hintText: 'example@example.com',
              label: 'email',
              prefixIcon: Icon(Icons.email),
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
              prefixIcon: Icon(Icons.password),
              keyboardType: TextInputType.text,
              autoCorrect: false,
              textCapitalization: TextCapitalization.none,
              isPassword: true,
            ),
            const SizedBox(height: 50),
            AppButton(),
            Divider()
          ],
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
