import 'package:flutter/material.dart';
import '../../../../shared/themes/app_theme.dart';

class IconPerson extends StatelessWidget {
  const IconPerson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9),
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: AppTheme.colors.backgroundIcons.withOpacity(.3),
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        AppTheme.images.person,
        color: AppTheme.colors.white,
      ),
    );
  }
}
