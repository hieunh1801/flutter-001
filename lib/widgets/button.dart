import 'package:flutter/cupertino.dart';
import 'package:flutter_001/themes/app_colors.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.title, required this.onPressed});
  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CupertinoButton(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(100.0),
        // border color
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 32.0,
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
