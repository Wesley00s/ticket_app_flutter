import 'package:flutter/material.dart';

class AppTabs extends StatelessWidget {
  final String tabText;
  final bool isBorderRight;
  final bool isTranparentColor;
  const AppTabs({super.key, this.tabText = "", this.isBorderRight = false, this.isTranparentColor = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(

      padding: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.44,
      decoration: BoxDecoration(
          color: !isTranparentColor
              ? Colors.white
              : Colors.transparent,
          borderRadius: !isBorderRight
              ? const BorderRadius.horizontal(left: Radius.circular(50))
              : const BorderRadius.horizontal(right: Radius.circular(50))),
      child: Center(child: Text(tabText)),
    );
  }
}
