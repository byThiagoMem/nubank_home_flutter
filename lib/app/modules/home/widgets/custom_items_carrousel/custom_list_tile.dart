import 'package:flutter/material.dart';
import '../../../../shared/themes/app_theme.dart';

class CustomItemsCarrousel extends StatelessWidget {
  final String title;
  final String image;

  const CustomItemsCarrousel(
      {Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          padding: EdgeInsets.all(7),
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppTheme.colors.backgroundIcons,
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            image,
            height: 40,
          ),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppTheme.textStyles.titlesHomeCards,
        ),
      ],
    );
  }
}
