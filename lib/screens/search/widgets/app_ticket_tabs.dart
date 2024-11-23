import 'package:flutter/material.dart';

import 'app_tabs.dart';

class AppTicketTabs extends StatelessWidget {
  final String text1;
  final String text2;
  const AppTicketTabs({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFF5FAFF)),
      child: Row(
        children: [
          AppTabs(
            tabText: text1,
          ),
          AppTabs(
            tabText: text2,
            isBorderRight: true,
            isTranparentColor: true,
          ),
        ],
      ),
    );
  }
}
