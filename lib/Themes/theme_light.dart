import 'package:flutter/material.dart';
import 'package:theme/Themes/theme_colors.dart';
import 'package:theme/Themes/theme_text.dart';

class ThemeLight{
  ThemeLight._();
  static ThemeData theme_light=ThemeData(
  backgroundColor: ThemeColors.backgroundColor_lt,
  appBarTheme: appBarTheme,
  textTheme: ThemeText.textTheme_lt,
  iconTheme: iconThemeData

  );
  static AppBarTheme appBarTheme= AppBarTheme(
      backgroundColor: ThemeColors.appBarTheme_lt,
    // titleTextStyle:TextStyle(
    //   fontSize: 33
    // )
  );
  static IconThemeData iconThemeData =
  IconThemeData(color: Colors.black,size: 100);
}