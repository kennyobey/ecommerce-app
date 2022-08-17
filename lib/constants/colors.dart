import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // this basically makes it so you can instantiate this class

  static const Map<int, Color> orange = <int, Color>{
    50: Color(0xFFFCF2E7),
    100: Color(0xFFF8DEC3),
    200: Color(0xFFF3C89C),
    300: Color(0xFFEEB274),
    400: Color(0xFFEAA256),
    500: Color(0xFFE69138),
    600: Color(0xFFE38932),
    700: Color(0xFFDF7E2B),
    800: Color(0xFFDB7424),
    900: Color(0xFFFF574D)
  };

  static const primaryColor = Color(0xFF6007FF);
  static const secondaryColor = Color(0xFF2F2E41);
  static const accentColor = Color(0xFFC4C4C4);
  static const boxcolor = Color.fromARGB(255, 225, 214, 245);

  static const codeNumberColor = Color(0xFFAE81FF);
  static const textColor = Color(0xFF6007FF);

  static const theme = TextStyle(
    color: Color(0xFF14171A),
    fontFamily: "SegoeUI",
    fontStyle: FontStyle.normal,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
}
