import 'package:flutter/material.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),   
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Otros lenguajes de programación",
            style: Theme.of(context).textTheme.subtitle2
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.85,
          label: "HTML + CSS3",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.90,
          label: "SQL",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "JavaScript",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.65,
          label: "Kotlin",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.65,
          label: "Firebase",
        ),
      ],
    );
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key, 
    required this.percentage, 
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration, 
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: const TextStyle(color: Colors.white),
                ),
                Text((value * 100).toInt().toString() + "%")
              ],
            ),
            const SizedBox(height: defaultPadding / 2),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}
