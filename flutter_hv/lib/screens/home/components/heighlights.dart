import 'package:flutter/material.dart';
import 'package:flutter_hv/components/animated_counter.dart';
import 'package:flutter_hv/resposive.dart';
import 'package:flutter_hv/screens/home/components/heigh_light.dart';

import '../../../constants.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context) 
        ? Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  counter: AnimatedCounter(
                    value: 10,
                    text: "+",
                  ),
                  label: "Proyectos",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 3,
                    text: "",
                  ),
                  label: "Experiencia",
                ),
              ],
            ),
            const SizedBox(height: defaultPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  counter: AnimatedCounter(
                    value: 10,
                    text: "+",
                  ),
                  label: "Proyectos",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 3,
                    text: "",
                  ),
                  label: "Experiencia",
                ),
              ],
            ),
          ],
        )
        : Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HeighLight(
              counter: AnimatedCounter(
                value: 10,
                text: "+",
              ),
              label: "Proyectos",
            ),
            HeighLight(
              counter: AnimatedCounter(
                value: 3,
                text: "",
              ),
              label: "Experiencia",
            ),
            HeighLight(
              counter: AnimatedCounter(
                value: 10,
                text: "+",
              ),
              label: "Proyectos",
            ),
            HeighLight(
              counter: AnimatedCounter(
                value: 10,
                text: "+",
              ),
              label: "Proyectos",
            ),
          ],
        ),
    );
  }
}