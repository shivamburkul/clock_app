import 'package:clock_app/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ClockApp());
}

class ClockApp extends StatelessWidget {
  const ClockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyClockApp',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: MyMainScreen(),
    );
  }
}
