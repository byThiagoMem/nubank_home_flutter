import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get titleAppbar;
  TextStyle get titlesHome;
  TextStyle get titlesHomeCards;
  TextStyle get titlesHomeBanners;
  TextStyle get subtitlesHomeInfos;
  TextStyle get subtitlesHomeCardsBottom;
  TextStyle get titlesHomeBannersFeatured;
  TextStyle get values;
  TextStyle get buttonBannerHome;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get titleAppbar => GoogleFonts.lato(
      fontSize: 18.0,
      color: AppTheme.colors.white,
      fontWeight: FontWeight.w600);

  @override
  TextStyle get titlesHome => GoogleFonts.lato(
      fontSize: 18.5,
      color: AppTheme.colors.black,
      fontWeight: FontWeight.w600);

  @override
  TextStyle get titlesHomeCards => GoogleFonts.lato(
      fontSize: 13.0,
      color: AppTheme.colors.black,
      fontWeight: FontWeight.w600);

  @override
  TextStyle get values => GoogleFonts.nunito(
      fontSize: 21.0,
      color: AppTheme.colors.black,
      fontWeight: FontWeight.w700);

  @override
  TextStyle get titlesHomeBanners => GoogleFonts.lato(
      fontSize: 13.0,
      color: AppTheme.colors.black,
      fontWeight: FontWeight.w400,
      letterSpacing: .5);

  @override
  TextStyle get titlesHomeBannersFeatured => GoogleFonts.lato(
      fontSize: 13.0,
      color: AppTheme.colors.darkPurple,
      fontWeight: FontWeight.w400,
      letterSpacing: .5);

  @override
  TextStyle get subtitlesHomeInfos => GoogleFonts.nunito(
      fontSize: 14,
      color: AppTheme.colors.black.withOpacity(.5),
      fontWeight: FontWeight.w700,
      letterSpacing: .2);

  @override
  TextStyle get buttonBannerHome => GoogleFonts.nunito(
      fontSize: 12,
      color: AppTheme.colors.white,
      fontWeight: FontWeight.w400,
      letterSpacing: .5);

  @override
  TextStyle get subtitlesHomeCardsBottom => GoogleFonts.nunito(
      fontSize: 13,
      color: AppTheme.colors.black,
      fontWeight: FontWeight.w500,
      letterSpacing: .2);
}
