import 'package:flutter/material.dart';
import 'package:flutter_hv/constants.dart';
import 'package:flutter_svg/svg.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding ),
          child: Text(
            "Conocimientos",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(text: "GIT"),
        KnowledgeText(text: "SCRUM"),
        KnowledgeText(text: "MVC"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key, 
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        children: [
          Image.asset("assets/icons/check.png", width: 10),
          SizedBox(width: defaultPadding / 2),
          Text(text)
        ],
      ),
    );
  }
}