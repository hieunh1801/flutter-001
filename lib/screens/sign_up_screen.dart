import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_001/themes/app_colors.dart';
import 'package:flutter_001/widgets/button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var passwordObscureText = true;
  var accepted = false;
  @override
  Widget build(BuildContext context) {
    var nameTextField = CupertinoTextField(
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
      placeholder: 'Name',
    );
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
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text(
          "Sign Up",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),
        backgroundColor: AppColors.white,
        border: null,
        padding: EdgeInsetsDirectional.zero,
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Icon(
            CupertinoIcons.clear,
            size: 16.0,
            color: AppColors.gray03,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        trailing: CupertinoButton(
          padding: const EdgeInsets.only(right: 16.0),
          child: const Text(
            "Login",
            style: TextStyle(color: AppColors.primaryColor),
          ),
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            nameTextField,
            const SizedBox(height: 16.0),
            emailTextField,
            const SizedBox(height: 16.0),
            passwordTextField,
            const SizedBox(height: 32.0),
            // checkbox
            SizedBox(
              width: double.infinity,
              child: CupertinoButton(
                padding: EdgeInsets.zero,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      accepted
                          ? CupertinoIcons.checkmark_square
                          : CupertinoIcons.app,
                      color: AppColors.gray03,
                    ),
                    const SizedBox(width: 8.0),
                    const Expanded(
                      child: Text(
                          style: TextStyle(
                            color: AppColors.gray04,
                          ),
                          "I would like to receive your newsletter and other promotional information."),
                    ),
                  ],
                ),
                onPressed: () {
                  setState(
                    () {
                      accepted = !accepted;
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 32.0),
            Expanded(child: Container()),
            Button(title: "Sign Up", onPressed: accepted ? () {} : null),
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
