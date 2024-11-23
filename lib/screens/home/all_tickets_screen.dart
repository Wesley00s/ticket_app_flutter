import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_style.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';


class AllTicketsScreen extends StatelessWidget {
  const AllTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All tickets"),
        backgroundColor: AppStyles.bgColor,
      ),
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map((sigleTicket) => Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: TicketView(ticket: sigleTicket, wholeScreen: true,)))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
