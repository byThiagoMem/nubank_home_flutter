import 'package:flutter/material.dart';
import '../../../../../shared/themes/app_theme.dart';

class CustomTopBanner extends StatelessWidget {
  final String title;
  final String titleFeatured;
  const CustomTopBanner(
      {Key? key, required this.title, required this.titleFeatured})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      margin: EdgeInsets.only(right: 8, left: 8),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppTheme.colors.backgroundIcons,
        borderRadius: BorderRadius.circular(10),
      ),
      child: RichText(
        text: TextSpan(
          text: title,
          style: AppTheme.textStyles.titlesHomeBanners,
          children: [
            TextSpan(
              text: titleFeatured,
              style: AppTheme.textStyles.titlesHomeBannersFeatured,
            )
          ],
        ),
      ),
    );
  }
}
