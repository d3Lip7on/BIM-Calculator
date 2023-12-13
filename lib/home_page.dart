import 'package:bmi_calculator/Parameter.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/gender.dart';
import 'package:bmi_calculator/heightslider.dart';
import 'package:bmi_calculator/CalculateButton.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const double gap = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      appBar: AppBar(
        title: Center(
            child: Text(
          'BMI calculator',
          style: Theme.of(context).textTheme.titleMedium,
        )),
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Gender.male(),
                    const SizedBox(
                      width: gap,
                    ),
                    Gender.female(),
                  ],
                ),
              ),
              const SizedBox(
                height: gap,
              ),
              const HeightSlider(),
              const SizedBox(
                height: gap,
              ),
              Row(
                children: [
                  Parameter.weight(),
                  const SizedBox(
                    width: gap,
                  ),
                  Parameter.age()
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CalculateButton(),
    );
  }
}
