import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData themeData = ThemeData(
    appBarTheme: AppBarTheme(
      color: AppColors.dodgerBlue,
      titleTextStyle: TextStyle(
        color: AppColors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(
      accentColor: AppColors.dodgerBlue,
    ),
  );
}
