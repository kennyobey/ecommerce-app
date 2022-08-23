import 'package:flutter/material.dart';
import 'colors.dart';

class AppTextStyle {
  AppTextStyle._();

  static final ThemeData themeData = ThemeData(
    fontFamily: 'Inter',
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
  );

  static const style18boldprimary500 = TextStyle(
    color: AppColors.primaryColor,
    fontFamily: "Inter",
    fontStyle: FontStyle.normal,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static const style18boldblack500 = TextStyle(
    color: Colors.black,
    fontFamily: "Inter",
    fontStyle: FontStyle.normal,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static const style18boldwhite500 = TextStyle(
    color: Colors.white,
    fontFamily: "Inter",
    fontStyle: FontStyle.normal,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static const style16white500 = TextStyle(
    color: Colors.white,
    fontFamily: "Inter",
    fontStyle: FontStyle.normal,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const style14black500 = TextStyle(
    color: Color(0xFF050505),
    fontFamily: "Inter",
    fontStyle: FontStyle.normal,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const style12accent500 = TextStyle(
    color: AppColors.accentColor,
    fontFamily: "Inter",
    fontStyle: FontStyle.normal,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  static const style25boldSecondary = TextStyle(
    color: AppColors.secondaryColor,
    fontFamily: "Inter",
    fontStyle: FontStyle.normal,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  static const style11black = TextStyle(
    color: Color(0xFF14171A),
    fontFamily: "Inter",
    fontStyle: FontStyle.normal,
    fontSize: 11,
    fontWeight: FontWeight.normal,
  );

  static const style11gray = TextStyle(
    color: Color(0xFFA3A3A4),
    fontFamily: "Inter",
    fontStyle: FontStyle.normal,
    fontSize: 11,
    fontWeight: FontWeight.normal,
  );

  static const style12Pri = TextStyle(
    color: Color(0xFFFF574D),
    fontFamily: "Inter",
    fontStyle: FontStyle.normal,
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );

  static const style12PriBold = TextStyle(
    color: Color(0xFFFF574D),
    fontFamily: "Inter",
    fontStyle: FontStyle.normal,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );

  static const style12boldblack = TextStyle(
    color: Colors.black,
    fontFamily: "Inter",
    fontStyle: FontStyle.normal,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );

  static const style12black = TextStyle(
    color: Colors.black,
    fontFamily: "Inter",
    fontStyle: FontStyle.normal,
    fontSize: 12,
  );

  static const style12boldwhite = TextStyle(
    color: Colors.white,
    fontFamily: "Inter",
    fontStyle: FontStyle.normal,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );

  static const style12white = TextStyle(
    color: Colors.white,
    fontFamily: "Inter",
    fontStyle: FontStyle.normal,
    fontSize: 12,
  );
}
