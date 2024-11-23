import 'package:flutter/material.dart';

class BigDot extends StatelessWidget {
  final bool isColor;
  const BigDot({super.key, this.isColor = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          border: Border.all(
            width: 2.5,
            color: !isColor ? Colors.white : const Color(0xFF4DB5CB),
          ),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
