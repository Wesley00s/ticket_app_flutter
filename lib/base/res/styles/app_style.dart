import 'package:flutter/material.dart';

Color primary = const Color(0xFF526799);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = Colors.black54;
  static Color ticketBlue = primary;
  static Color ticketOrange = const Color(0xFFF37B67);
  static Color kakiColor = const Color(0xFFd2BDB6);
  static Color iconColor = const Color(0xFFBFC2DF);
  static Color btnColor = const Color(0xD91120CE);
  static Color ticketColor = Colors.white;

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
  static TextStyle headLine4 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.grey.shade500,
  );
}
