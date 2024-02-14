import 'package:flutter/material.dart';
import 'package:travel_app/features/home/ui/views/main_view.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      home: MainView(),
    );
  }
}
