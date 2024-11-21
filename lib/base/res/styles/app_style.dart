import 'package:flutter/material.dart';

Color primary = Colors.blueAccent;

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = Colors.black54;
  static Color ticketBlue = const Color(0xFF526799);

  static Color bgColor = const Color(0xFFECF3F5);
  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: textColor,
  );
  static TextStyle headLine1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w700,
    color: textColor,
  );
  static TextStyle headLine2 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle headLine3 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
}
