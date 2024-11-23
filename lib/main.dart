import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/screens/home/all_hotels_screen.dart';
import 'package:ticket_app/screens/home/all_tickets_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Tickets',
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const BottomNavBar(),
        "/all_tickets_screen": (context) => const AllTicketsScreen(),
        "/all_hotels_screen": (context) => const AllHotelsScreen(),
      },
    );
  }
}