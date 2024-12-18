import 'package:flutter/material.dart';

import '../res/styles/app_style.dart';

class AppDoubleText extends StatelessWidget {
  final String bigText;
  final String smalText;
  final String route;
  const AppDoubleText(
      {super.key, required this.bigText, required this.smalText, required this.route});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headLine2),
        InkWell(
          onTap: () => Navigator.pushNamed(context, route),
          child: Text(smalText,
              style:
                  AppStyles.textStyle.copyWith(color: AppStyles.primaryColor)),
        )
      ],
    );
  }
}
