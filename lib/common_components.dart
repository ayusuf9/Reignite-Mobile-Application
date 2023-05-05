import 'package:flutter/material.dart';

import 'assets.dart';

class LearnMoreButton extends StatelessWidget {
  final bool isFilled;
  const LearnMoreButton({super.key, required this.isFilled});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(color: kOrangeCOlor, width: 1.2),
          color: isFilled ? kOrangeCOlor : kCreambackgroundColor),
      child: Center(
          child: Text(
        "Learn More",
        textScaleFactor: 1.3,
        style: TextStyle(color: isFilled ? Colors.white : kOrangeCOlor),
      )),
    );
  }
}
