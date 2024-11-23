import 'package:flutter/cupertino.dart';

import '../res/styles/app_style.dart';

class BigCircle extends StatelessWidget {
  final bool isRight;
  final bool isColor;
  const BigCircle({super.key, required this.isRight, this.isColor = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 20,
        width: 10,
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: !isColor ? AppStyles.bgColor : AppStyles.ticketColor,
              borderRadius: isRight
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10))
                  : const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
        ));
  }
}
