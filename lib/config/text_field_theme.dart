import 'package:arrowj/constants/colors.dart';
import 'package:flutter/material.dart';

class TThemeFormFieldTheme {
  TThemeFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: tSecondaryColor,
          floatingLabelStyle: TextStyle(color: tSecondaryColor),
          labelStyle: TextStyle(color: tSecondaryColor),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2.0, color: tSecondaryColor)));

  static InputDecorationTheme darkInputDecorationTheme =
  const InputDecorationTheme(
      border: OutlineInputBorder(),
      prefixIconColor: tPrimaryColor,
      floatingLabelStyle: TextStyle(color: tPrimaryColor),
      labelStyle: TextStyle(color: tPrimaryColor),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2.0, color: tPrimaryColor)));
}
