import 'package:arrowj/config/outlined_button_theme.dart';
import 'package:flutter/material.dart';
import 'package:arrowj/config/text_theme.dart';

import 'elevated_button_theme.dart';

class TAppTheme {


  static ThemeData lightTheme = ThemeData.light().copyWith(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.deepPurple,
    ),
    textTheme: TTextTheme.lightTextTheme,
    /*elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TTextTheme.lightTextTheme.button,
      ),
    ),*/
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlineButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.green,
    ),
    textTheme: TTextTheme.darkTextTheme,
    /*elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TTextTheme.darkTextTheme.button,
      ),
    ),*/
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlineButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
  );

  TAppTheme._();
}
