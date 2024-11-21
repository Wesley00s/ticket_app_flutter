import 'package:flutter/material.dart';

import '../res/styles/app_style.dart';
import 'big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: AppStyles.ticketBlue,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(21), topRight: Radius.circular(21))),
        child: Column(
          children: [
            Row(
              children: [
                Text("NYC",
                    style: AppStyles.headLine3.copyWith(color: Colors.white)),
                Expanded(child: Container()),
                const BigDot(),
                Expanded(child: Container()),
                const BigDot(),
                Expanded(child: Container()),
                Text("NYC",
                    style: AppStyles.headLine3.copyWith(color: Colors.white)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
