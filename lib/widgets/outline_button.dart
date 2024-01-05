import 'package:flutter/cupertino.dart';
import 'package:flutter_001/themes/app_colors.dart';

class OutlineButton extends StatelessWidget {
  const OutlineButton(
      {super.key, required this.title, required this.onPressed});
  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          border: Border.all(
            color: AppColors.primaryColor,
          )),
      child: CupertinoButton(
        color: AppColors.white,
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
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
