import 'package:flutter/material.dart';
import '../../../../shared/themes/app_theme.dart';

import 'icon_person.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: AppTheme.colors.darkPurple,
      padding: const EdgeInsets.only(
          right: 20.0, left: 20.0, top: 10.0, bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconPerson(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    AppTheme.images.eyes,
                    color: AppTheme.colors.white,
                    width: 40,
                    height: 40,
                  ),
                  Image.asset(
                    AppTheme.images.question_white,
                    color: AppTheme.colors.white,
                    width: 42,
                    height: 42,
                  ),
                  Image.asset(
                    AppTheme.images.message,
                    color: AppTheme.colors.white,
                    width: 32,
                    height: 32,
                  ),
                ],
              ),
            ],
          ),
          Text(
            'Olá, Thiago',
            style: AppTheme.textStyles.titleAppbar,
          )
        ],
      ),
    );
  }
}
