import 'package:flutter/material.dart';
import '../../../../shared/themes/app_theme.dart';

class CustomItemsCarrousel extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback onTap;

  const CustomItemsCarrousel(
      {Key? key, required this.title, required this.image, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(500),
          onTap: onTap,
          child: Container(
            width: 70,
            height: 70,
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: AppTheme.colors.backgroundIcons,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              image,
              height: 40,
            ),
          ),
        ),
        SizedBox(height: 13),
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppTheme.textStyles.titlesHomeCards,
        ),
      ],
    );
  }
}
