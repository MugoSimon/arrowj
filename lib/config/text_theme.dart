import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = GoogleFonts.poppinsTextTheme().copyWith(
    headline1: const TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
    headline2: const TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
    headline3: const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
    headline4: const TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
    headline5: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
    bodyText2: const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
  );


  static TextTheme darkTextTheme = GoogleFonts.jetBrainsMonoTextTheme().copyWith(
    headline1: const TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline2: const TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline3: const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline4: const TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline5: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodyText2: const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );

}
