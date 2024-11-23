import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/screens/widgets/hotel.dart';


class AllHotelsScreen extends StatelessWidget {
  const AllHotelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All hotels"),
        backgroundColor: AppStyles.bgColor,
      ),
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: hotelList
                  .map((sigleHotel) => Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Hotel(hotel: sigleHotel, wholeScreen: true,)))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
