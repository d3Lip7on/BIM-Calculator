import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  IconData icon;
  String text;

  Gender({super.key, required this.icon, required this.text}){};

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
        child: Padding(
          padding: EdgeInsets.all(35),
          child: Center(
            child: Column(
              children: [
                Icon(
                  widget.icon,
                  size: 80,
                  color: Theme.of(context).highlightColor,
                ),
                Text(
                  widget.text,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
