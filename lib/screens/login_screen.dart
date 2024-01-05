import 'package:flutter/cupertino.dart';
import 'package:flutter_001/screens/sign_up_screen.dart';
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
    var cupertinoNavigationBar = const CupertinoNavigationBar(
      middle: Text(
        "Login",
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
      ),
      backgroundColor: AppColors.white,
      border: null,
      padding: EdgeInsetsDirectional.zero,
    );
    return CupertinoPageScaffold(
      navigationBar: cupertinoNavigationBar,
      child: Padding(
        padding: const EdgeInsets.all(16.0), // EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 18.0),
            // const AppBar(title: "Login"),
            const SizedBox(height: 32.0),
            emailTextField,
            const SizedBox(height: 16.0),
            passwordTextField,
            Expanded(child: Container()),
            const SizedBox(
              height: 16.0,
            ),
            Button(title: "Login", onPressed: () {}),
            const SizedBox(
              height: 16.0,
            ),
            OutlineButton(
              title: 'Sign Up',
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const SignUpScreen(),
                  ),
                );
              },
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
