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
          border: Border.all(color: kOrangeColor, width: 1.2),
          color: isFilled ? kOrangeColor : kCreamBackgroundColor),
      child: Center(
          child: Text(
        "Learn More",
        textScaleFactor: 1.3,
        style: TextStyle(color: isFilled ? Colors.white : kOrangeColor),
      )),
    );
  }
}

class QuestionnaireCard extends StatefulWidget {
  final String questionOption;
  final String imagePath;

  const QuestionnaireCard({
    required this.questionOption,
    required this.imagePath,
    super.key,
  });

  @override
  State<QuestionnaireCard> createState() => _QuestionnaireCardState();
}

class _QuestionnaireCardState extends State<QuestionnaireCard> {
  bool borderOn = false;
  double borderThickness = 0.5;
  Color borderColor = kSlateColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, bottom: 25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            width: borderThickness,
            color: borderColor,
          ),
          padding: const EdgeInsets.all(10),
          maximumSize: const Size(250, 80),
          backgroundColor: const Color(0xffffe8d7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // <-- Radius
          ),
        ),
        onPressed: () {
          setState(() {
            borderOn = !borderOn;
            borderThickness = borderOn ? 3.5 : 0.5;
            borderColor = borderOn ? kOrangeColor : kSlateColor;
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: kSlateColor,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ImageIcon(
                    AssetImage(widget.imagePath),
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  widget.questionOption,
                  textDirection: TextDirection.ltr,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.info_outline_rounded,
                    color: kSlateColor,
                    size: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
