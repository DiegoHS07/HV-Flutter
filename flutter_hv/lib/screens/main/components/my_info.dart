import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
            children: [
              const Spacer(flex: 2),
              CircleAvatar(
                radius: 70,
                backgroundImage:
                  AssetImage("assets/images/foto_perfil.jpg"),
              ),
              const Spacer(),
              Text(
                "Diego Higuera",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const Text(
                "Desarrollador Web y Android",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5, 
                ),
              ),
              const Spacer(flex: 2),
            ],
        ),
      ), 
    );
  }
}