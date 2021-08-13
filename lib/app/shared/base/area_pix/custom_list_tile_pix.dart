import 'package:flutter/material.dart';
import '../../themes/app_theme.dart';

class CustomListTilePix extends StatelessWidget {
  final String title;
  final String icon;

  const CustomListTilePix({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(icon, height: 22),
      title: Text(
        title,
        style: AppTheme.textStyles.titlesHome.copyWith(fontSize: 15),
      ),
      trailing: Icon(Icons.keyboard_arrow_right_outlined),
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    );
  }
}
