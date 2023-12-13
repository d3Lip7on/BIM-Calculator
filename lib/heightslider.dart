import 'package:flutter/material.dart';

class HeightSlider extends StatefulWidget {
  const HeightSlider({super.key});

  @override
  State<HeightSlider> createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  double height = 0;

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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'HEIGHT',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(height.toInt().toString(),
                      style: Theme.of(context).textTheme.titleLarge),
                  Text('CM', style: Theme.of(context).textTheme.titleSmall),
                ],
              ),
              Slider(
                  min: 0,
                  max: 230,
                  value: height,
                  onChanged: (newHeight) {
                    setState(() {
                      height = newHeight;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
