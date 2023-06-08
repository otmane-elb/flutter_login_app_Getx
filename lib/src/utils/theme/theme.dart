import 'package:flutter/material.dart';
import 'package:login_app/src/utils/theme/widgets_themes/text_theme.dart';

class OAppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    textTheme: OTextTheme.lightTextThem,
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(focusColor: Colors.black),
  );

  static ThemeData darkTheme = ThemeData(
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(focusColor: Colors.white),
      useMaterial3: true,
      brightness: Brightness.dark,
      textTheme: OTextTheme.darkTextThem);
}
