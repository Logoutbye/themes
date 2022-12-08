import 'package:flutter/material.dart';
import 'package:theme/Themes/theme_colors.dart';
import 'package:theme/Themes/theme_text.dart';

class Themedark{
  Themedark._();

  static ThemeData theme_dark= ThemeData(
    backgroundColor: ThemeColors.backgroundColor_dt,
  appBarTheme: appBarTheme,
    textTheme: ThemeText.textTheme_dt,
      iconTheme: iconThemeData,

  );
  static AppBarTheme appBarTheme= AppBarTheme(
      backgroundColor: ThemeColors.appBarTheme_dt);
  static IconThemeData iconThemeData =IconThemeData(color: Colors.white,size: 100);
}