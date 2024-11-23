import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/search/widgets/find_tickets.dart';
import 'package:ticket_app/screens/search/widgets/ticket_promotion.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
            "What are\nyou looking for?",
            style: AppStyles.headLine1,
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTabs(text1: "All tickets", text2: "Hotels"),
          const SizedBox(
            height: 25,
          ),
          const AppTextIcon(
            icon: Icons.flight_takeoff_rounded,
            text: "Derpature",
          ),
          const SizedBox(
            height: 25,
          ),
          const AppTextIcon(
            icon: Icons.flight_land_rounded,
            text: "Arrival",
          ),
          const SizedBox(
            height: 25,
          ),
          const FindTickets(
            text: 'Find tickets',
          ),
          const SizedBox(
            height: 40,
          ),
          const AppDoubleText(
            bigText: 'Upcoming Flights',
            smalText: 'View all',
            route: "/all_tickets_screen",
          ),
          const SizedBox(
            height: 15,
          ),
          const TicketPromotion()
        ],
      ),
    );
  }
}
