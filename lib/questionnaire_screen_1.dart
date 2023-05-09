import 'package:flutter/material.dart';
import 'package:reignite_social/questionnaire_screen_2.dart';
import 'assets.dart';
import 'common_components.dart';

void main() {
  runApp(
    const MaterialApp(home: Question1()),
  );
}

class Question1 extends StatefulWidget {
  const Question1({Key? key}) : super(key: key);

  @override
  State<Question1> createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff6ef),
      body: Center(
        child: Container(
          height: 844,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 120),
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const ImageIcon(
                  AssetImage('assets/icons/icon-park-outline_oval-love.png'),
                ),
              ), // values icon
              const SizedBox(height: 5.44),
              const SizedBox(
                width: 312,
                child: Text(
                  "What social issues are you passionate about?",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                width: 312,
                child: Text(
                  "You may choose more than one.",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 0.5,
                        color: kSlateColor,
                      ),
                      top: BorderSide(
                        width: 0.5,
                        color: kSlateColor,
                      ),
                    ),
                  ),
                  child: Center(
                    child: ListView(
                      padding: const EdgeInsets.symmetric(vertical: 50),
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(),
                      children: const [
                        QuestionnaireCard(
                          questionOption: "Education",
                          imagePath: 'assets/icons/ph_graduation-cap-light.png',
                        ),
                        QuestionnaireCard(
                          questionOption: "Environment",
                          imagePath: 'assets/icons/image 5.png',
                        ),
                        QuestionnaireCard(
                          questionOption: "Health",
                          imagePath:
                              'assets/icons/healthicons_health-outline.png',
                        ),
                        QuestionnaireCard(
                          questionOption: "Human Rights",
                          imagePath: 'assets/icons/ph_peace.png',
                        ),
                        QuestionnaireCard(
                          questionOption: "Animal Welfare",
                          imagePath: 'assets/icons/Paw Print.png',
                        ),
                        QuestionnaireCard(
                          questionOption: "Poverty Alleviation",
                          imagePath: 'assets/icons/Heart.png',
                        ),
                        QuestionnaireCard(
                          questionOption: "Arts & Culture",
                          imagePath:
                              'assets/icons/fluent-emoji-high-contrast_performing-arts.png',
                        ),
                        QuestionnaireCard(
                          questionOption: "Technology & Innovation",
                          imagePath: 'assets/icons/Laptop Screen.png',
                        ),
                        QuestionnaireCard(
                          questionOption: "Other",
                          imagePath: 'assets/icons/Other icon.png',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum:
            const EdgeInsets.only(left: 40, right: 40, bottom: 50, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 16,
                  height: 16,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kSlateColor,
                  ),
                ),
                Container(
                  width: 16,
                  margin: const EdgeInsets.all(10),
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kSlateColor.withOpacity(0.2),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kSlateColor.withOpacity(0.2),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kSlateColor.withOpacity(0.2),
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Question2(),
                  ),
                );
              },
              icon: const Icon(
                Icons.arrow_forward_rounded,
                size: 50,
                color: kSlateColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
