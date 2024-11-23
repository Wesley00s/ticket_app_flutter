import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          width: size.width * 0.44,
          height: 355,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 2,
                    spreadRadius: 4),
              ]),
          child: Column(
            children: [
              Container(
                height: 192,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(AppMedia.planeSit))),
              ),
              const SizedBox(
                height: 22,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Text(
                  "20% discount on the early booking of this flight. Don't miss",
                  style: AppStyles.headLine3,
                ),
              )
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  width: size.width * 0.44,
                  height: 170,
                  decoration: BoxDecoration(
                      color: const Color(0xFF3E88bb),
                      borderRadius: BorderRadius.circular(18)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discount\n for survey",
                        style: AppStyles.headLine2.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Take the suvey about our services and get discount",
                        style: AppStyles.headLine3.copyWith(
                            fontWeight: FontWeight.w300, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 18,
                          color: const Color(0xff387aa8),
                        )),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                width: size.width * 0.44,
                height: 170,
                decoration: BoxDecoration(
                    color: const Color(0xFFEC6545),
                    borderRadius: BorderRadius.circular(18)),
                child: Column(
                  children: [
                    Text(
                      "Take Love",
                      style: AppStyles.headLine2.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ))
          ],
        ),
      ],
    );
  }
}
