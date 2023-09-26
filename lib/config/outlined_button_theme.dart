import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  /* light mode*/
  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    shape: RoundedRectangleBorder(),
    foregroundColor: tSecondaryColor,
    side: BorderSide(color: tSecondaryColor),
    padding: EdgeInsets.symmetric(vertical: tButtonHeight),
  ));

  /* dark mode*/
  /* dark mode */

// Define the darkOutlineButtonTheme for dark mode
  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: tWhiteColor,
        side: BorderSide(color: tWhiteColor),
        padding: EdgeInsets.symmetric(vertical: tButtonHeight),
      )
  );

}
