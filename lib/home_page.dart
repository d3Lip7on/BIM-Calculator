import 'package:flutter/material.dart';
import 'package:bmi_calculator/gender.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI calculator')),
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Theme.of(context).primaryColorDark),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Gender(
                      icon: Icons.male,
                      text: 'MALE',
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Gender(
                      icon: Icons.female,
                      text: 'FEMALE',
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
