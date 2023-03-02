import 'package:flutter/material.dart';

Color primary = const Color(0xff687daf);

class ColorStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xff3b3b3b);
  static Color bgColor = Color.fromARGB(255, 236, 236, 236);
  static Color blueHoverColor = const Color(0xff687daf);
  static Color blueColor = const Color(0xff526480);
  static Color orangeColor = const Color(0xFFF37b67);
}

class CustomTextStyles {
  static TextStyle textStyle = TextStyle(
      fontSize: 16, color: ColorStyles.textColor, fontWeight: FontWeight.w500);
  static TextStyle headlineText1 = TextStyle(
      fontSize: 26, color: ColorStyles.textColor, fontWeight: FontWeight.bold);
  static TextStyle headlineText2 = TextStyle(
      fontSize: 21, color: ColorStyles.textColor, fontWeight: FontWeight.bold);
  static TextStyle headlineText3 = TextStyle(
      fontSize: 17, color: Colors.grey.shade600, fontWeight: FontWeight.w500);
  static TextStyle headlineText4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
