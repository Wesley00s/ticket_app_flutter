import 'package:flutter/material.dart';

import '../res/styles/app_style.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key, required this.bigText, required this.smalText});
  final String bigText;
  final String smalText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headLine2),
        InkWell(
          onTap: () {

          },
          child: Text(smalText, style: AppStyles.textStyle.copyWith(
            color: AppStyles.primaryColor
          )),
        )
      ],
    );
  }
}
