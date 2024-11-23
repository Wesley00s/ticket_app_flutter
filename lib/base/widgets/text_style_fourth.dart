import 'package:flutter/material.dart';

import '../res/styles/app_style.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final bool isColor;
  const TextStyleFourth(
      {super.key,
      required this.text,
      this.textAlign = TextAlign.start,
      this.isColor = false});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        style: !isColor
            ? AppStyles.headLine4.copyWith(color: Colors.white)
            : AppStyles.headLine4);
  }
}
