import 'package:flutter/material.dart';
import '../../../../shared/themes/app_theme.dart';

class CustomInfos extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final String? invoice;
  final String? valueLoan;

  const CustomInfos({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.invoice,
    this.valueLoan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(icon, width: 45),
        SizedBox(height: 4),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: AppTheme.textStyles.titlesHome),
                  Icon(
                    Icons.keyboard_arrow_right_outlined,
                    size: 27,
                    color: AppTheme.colors.black.withOpacity(.5),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Text(subtitle, style: AppTheme.textStyles.subtitlesHomeInfos),
              SizedBox(height: 8),
              invoice!.isNotEmpty
                  ? Text(invoice!, style: AppTheme.textStyles.values)
                  : Container(),
              valueLoan!.isNotEmpty
                  ? Text(
                      valueLoan ?? '',
                      style: AppTheme.textStyles.subtitlesHomeInfos,
                    )
                  : Container(),
            ],
          ),
        ),
      ],
    );
  }
}
