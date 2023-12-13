import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  IconData? icon;
  String text = '';

  Gender.male({super.key}) {
    icon = Icons.male;
    text = 'MALE';
  }

  Gender.female({super.key}) {
    icon = Icons.female;
    text = 'FEMALE';
  }

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColorLight,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.icon,
                size: 80,
                color: Theme.of(context).highlightColor,
              ),
              Text(widget.text, style: Theme.of(context).textTheme.titleMedium),
            ],
          ),
        ),
      ),
    );
  }
}
