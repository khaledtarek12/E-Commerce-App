import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(
      {required bool isDarkTheme, required BuildContext context}) {
    return ThemeData(
      scaffoldBackgroundColor: isDarkTheme
          ? AppColors.darkScaffoldColor
          : AppColors.lightScaffoldColor,
      cardColor:
          isDarkTheme ? AppColors.darkCardColor : AppColors.lightCardColor,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
    );
  }
}
