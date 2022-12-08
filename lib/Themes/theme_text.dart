import 'package:flutter/material.dart';

class ThemeText{
  ThemeText._();
  static TextTheme textTheme_lt = TextTheme(
  headline1: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.pink
  ));

  static TextTheme textTheme_dt = TextTheme(
  headline1: TextStyle(fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.tealAccent

  ));
}