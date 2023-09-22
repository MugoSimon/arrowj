import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = GoogleFonts.poppinsTextTheme().copyWith(
    headline1: const TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
    headline5: const TextStyle(
      fontSize: 20.0,
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
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline5: const TextStyle(
      fontSize: 20.0,
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
