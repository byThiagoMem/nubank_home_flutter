import 'package:flutter/material.dart';

import '../../../../../shared/themes/app_theme.dart';

class CustomBottomBanner extends StatelessWidget {
  final bool? isNew;
  final String title;
  final String subtitle;
  final String titleButton;

  const CustomBottomBanner({
    Key? key,
    this.isNew,
    required this.title,
    required this.subtitle,
    required this.titleButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      margin: EdgeInsets.only(right: 8, left: 8),
      decoration: BoxDecoration(
        color: AppTheme.colors.backgroundIcons,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: AppTheme.textStyles.titlesHome,
                ),
                isNew!
                    ? Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: AppTheme.colors.darkPurple,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          'Novo',
                          style: AppTheme.textStyles.buttonBannerHome,
                        ),
                      )
                    : Container(),
              ],
            ),
            Text(
              subtitle,
              style: AppTheme.textStyles.subtitlesHomeCardsBottom,
            ),
            OutlinedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: AppTheme.colors.darkPurple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red)),
              ),
              child: Text(
                titleButton,
                style: AppTheme.textStyles.buttonBannerHome.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
