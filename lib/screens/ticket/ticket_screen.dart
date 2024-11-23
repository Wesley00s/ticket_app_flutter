import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "Tickets",
            style: AppStyles.headLine1,
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTabs(text1: "Upcoming", text2: "Previous",),
          const SizedBox(
            height: 25,
          ),
          TicketView(
            ticket: ticketList.first,
            wholeScreen: true,
            isColor: true,
          )
        ],
      ),
    );
  }
}
