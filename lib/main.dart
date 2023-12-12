import 'package:flutter/material.dart';
import 'package:bmi_calculator/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData(
        primaryColorLight: const Color(0x2C1B3DFF),
        primaryColorDark: const Color(0x16081FFF),
        highlightColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}
