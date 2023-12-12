import 'package:bmi_calculator/Parameter.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/gender.dart';
import 'package:bmi_calculator/heightslider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        child: Container(
          //decoration: BoxDecoration(color: Theme.of(context).primaryColorDark),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Gender.male(),
                    const SizedBox(
                      width: 30,
                    ),
                    Gender.female(),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const HeightSlider(),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Parameter.weight(),
                    SizedBox(
                      width: 30,
                    ),
                    Parameter.age()
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
