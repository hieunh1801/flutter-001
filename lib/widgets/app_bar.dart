import 'package:flutter/cupertino.dart';
import 'package:flutter_001/themes/app_colors.dart';

class AppBar extends StatelessWidget implements ObstructingPreferredSizeWidget {
  final String title;
  final Widget? leading;
  const AppBar({super.key, required this.title, this.leading});

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: Text(
        title,
        style: const TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
      ),
      backgroundColor: AppColors.white,
      border: null,
      padding: EdgeInsetsDirectional.zero,
      leading: leading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return true;
  }
}
