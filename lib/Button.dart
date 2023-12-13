import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String operation = '';
  VoidCallback callback;

  Button.plus({super.key, required this.callback}) {
    operation = '+';
  }

  Button.minus({super.key, required this.callback}) {
    operation = '-';
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: callback,
      shape: const CircleBorder(),
      backgroundColor: const Color.fromRGBO(92, 87, 97, 1),
      child: Text(
        operation,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
