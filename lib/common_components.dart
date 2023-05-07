import 'package:flutter/material.dart';

import 'assets.dart';
import 'npo_profile.dart';

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

class NPOInfoCard extends StatelessWidget {
  final String npoDescription;
  final String icon1;
  final String icon2;
  final String npoName;
  final String npoLogo;

  const NPOInfoCard({
    required this.npoDescription,
    required this.icon1,
    required this.icon2,
    required this.npoName,
    required this.npoLogo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 550,
      width: 320,
      decoration: BoxDecoration(
        color: const Color(0xffffe8d7),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xff526268),
          width: 0.5,
        ),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: 320,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: SizedBox(
                  width: 160.28,
                  height: 173,
                  child: Image.asset(npoLogo),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                padding: const EdgeInsets.only(
                  right: 15,
                ),
                child: const IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.more_horiz,
                    size: 40,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 349,
            width: 320,
            padding: const EdgeInsets.only(
              top: 15,
              left: 20,
              right: 20,
              bottom: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 30,
                          child: Text(
                            npoName,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ImageIcon(
                          AssetImage(icon1),
                          size: 10,
                          color: kSlateColor,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ImageIcon(
                          AssetImage(icon2),
                          size: 10,
                          color: kSlateColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: Text(
                      npoDescription,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 120,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NPOProfile(),
                            ),
                          );
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            width: 2,
                            color: kOrangeColor,
                          ),
                          foregroundColor: kOrangeColor,
                        ),
                        child: const Text(
                          'Learn More',
                          style: TextStyle(
                            fontSize: 16,
                            color: kOrangeColor,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const SizedBox(
                      width: 120,
                      height: 40,
                      child: TextButton(
                        onPressed: null,
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xffe35627)),
                          foregroundColor:
                              MaterialStatePropertyAll(Color(0xffffffff)),
                        ),
                        child: Text(
                          'Follow +',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
