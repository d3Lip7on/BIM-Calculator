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
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              Text(
                'HEIGHT',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 15,
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
              SizedBox(
                height: 15,
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
