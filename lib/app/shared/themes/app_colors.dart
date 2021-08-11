import 'package:flutter/material.dart';

abstract class AppColors {
  Color get white;
  Color get black;
  Color get darkPurple;
  Color get backgroundIcons;
}

class AppColorsDefault implements AppColors {
  @override
  Color get white => Color(0xFFFFFFFF);

  @override
  Color get darkPurple => Color(0xFF8e28b0);

  @override
  Color get backgroundIcons => Color(0xFFededed);

  @override
  Color get black => Color(0xFF000000);
}
