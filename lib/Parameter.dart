import 'package:flutter/material.dart';
import 'package:bmi_calculator/Button.dart';

class Parameter extends StatefulWidget {
  String title = '';

  Parameter.weight({super.key}) {
    title = 'WEIGHT';
  }

  Parameter.age({super.key}) {
    title = 'AGE';
  }

  @override
  State<Parameter> createState() => _ParameterState();
}

class _ParameterState extends State<Parameter> {
  int number = 0;

  void plusNumber() {
    setState(() {
      number++;
    });
  }

  void minusNumber() {
    setState(() {
      if (number > 0) {
        number--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColorLight,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              children: [
                Text(
                  widget.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  number.toString(),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button.minus(
                      callback: minusNumber,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Button.plus(
                      callback: plusNumber,
                    ),
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
