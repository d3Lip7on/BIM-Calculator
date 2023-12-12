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
        primaryColorLight: const Color.fromRGBO(57, 53, 61, 1),
        primaryColorDark: const Color.fromRGBO(39, 30, 46, 1),
        highlightColor: Colors.white,
        textTheme: const TextTheme(
            titleMedium: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
            titleSmall: TextStyle(
              fontSize: 10,
              color: Colors.white,
            ),
            titleLarge:
                TextStyle(fontSize: 50, color: Colors.white, height: 0.8)),
      ),
      home: HomePage(),
    );
  }
}
