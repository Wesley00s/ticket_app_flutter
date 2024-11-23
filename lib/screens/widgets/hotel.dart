import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';


class Hotel extends StatelessWidget {
  final bool wholeScreen;
  final Map<String, dynamic> hotel;
  const Hotel({super.key, this.wholeScreen = false, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: wholeScreen ? size.width * 0.8 : size.width * 0.6,
      height: 350,
      margin: EdgeInsets.only(right: wholeScreen ? 0 : 16),
      decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(24)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(21),
                      topLeft: Radius.circular(21)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/${hotel['image']}"))),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Text(
                  hotel["place"],
                  style:
                      AppStyles.headLine2.copyWith(color: AppStyles.kakiColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  hotel["destination"],
                  style: AppStyles.headLine3.copyWith(color: Colors.white),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  '\$${hotel["price"].toString()}/night',
                  style:
                      AppStyles.headLine2.copyWith(color: Colors.greenAccent),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
