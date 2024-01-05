import 'package:flutter/cupertino.dart';
import 'package:flutter_001/themes/app_colors.dart';
import 'package:flutter_001/widgets/button.dart';
import 'package:flutter_001/widgets/outline_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var passwordObscureText = true;
  @override
  Widget build(BuildContext context) {
    var emailTextField = CupertinoTextField(
      padding: const EdgeInsets.all(16.0),
      obscureText: passwordObscureText,
      decoration: BoxDecoration(
        color: AppColors.gray01,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: AppColors.gray02,
        ),
      ),
      placeholderStyle: const TextStyle(
        color: AppColors.gray03,
      ),
      placeholder: 'Email',
    );
    var passwordTextField = CupertinoTextField(
      padding: const EdgeInsets.all(16.0),
      obscureText: passwordObscureText,
      decoration: BoxDecoration(
        color: AppColors.gray01,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: AppColors.gray02,
        ),
      ),
      placeholderStyle: const TextStyle(
        color: AppColors.gray03,
      ),
      placeholder: 'Password',
      suffix: CupertinoButton(
        child: Text(
          passwordObscureText ? 'Show' : 'Hide',
          style: const TextStyle(
            fontSize: 12.0,
            color: AppColors.primaryColor,
          ),
        ),
        onPressed: () {
          setState(() {
            passwordObscureText = !passwordObscureText;
          });
        },
      ),
    );
    return CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ), // EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 18.0),
            const Center(
              child: Text(
                'Log In',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),
            ),
            const SizedBox(height: 32.0),
            emailTextField,
            const SizedBox(height: 16.0),
            passwordTextField,
            const Expanded(child: SizedBox(height: 32.0)),
            const SizedBox(
              height: 16.0,
            ),
            Button(title: "Login", onPressed: () {}),
            const SizedBox(
              height: 16.0,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlineButton(
                title: 'Sign Up',
                onPressed: () {},
              ),
            ),
            CupertinoButton(
              padding: EdgeInsets.zero,
              child: const Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 16.0,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onPressed: () {},
            ),
            const SizedBox(
              height: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}

// https://www.figma.com/file/qXqsvkBPh35PflCbwB9TIs/Mobile-UI-kit-(Community)?type=design&node-id=144-682&mode=dev
