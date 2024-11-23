import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  final bool isColor;
  const TextStyleThird({super.key, required this.text, this.isColor = false});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: !isColor
            ? AppStyles.headLine3.copyWith(color: Colors.white)
            : AppStyles.headLine3.copyWith(color: Colors.black));
  }
}
