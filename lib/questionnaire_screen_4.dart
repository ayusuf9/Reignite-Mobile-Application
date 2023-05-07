import 'package:flutter/material.dart';
import 'package:reignite_social/questionnaire_results.dart';
import 'assets.dart';
import 'common_components.dart';

void main() {
  runApp(
    const MaterialApp(home: Question4()),
  );
}

class Question4 extends StatefulWidget {
  const Question4({Key? key}) : super(key: key);

  @override
  State<Question4> createState() => _Question4State();
}

class _Question4State extends State<Question4> {
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
                child: Image.asset('assets/icons/Group 8.png'),
              ), // values icon
              const SizedBox(height: 5.44),
              const SizedBox(
                width: 312,
                child: Text(
                  "How would like to support charities?",
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
                          questionOption: "Monetary Donations",
                          imagePath: 'assets/icons/moneybag.png',
                        ),
                        QuestionnaireCard(
                          questionOption: "Volunteer Time",
                          imagePath: 'assets/icons/Hhourglass_move_light.png',
                        ),
                        QuestionnaireCard(
                          questionOption: "Offer Resources",
                          imagePath: 'assets/icons/GIft.png',
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
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_rounded,
                size: 50,
                color: kSlateColor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kSlateColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 80,
              height: 50,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SurveyResults(),
                    ),
                  );
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    kOrangeColor,
                  ),
                  foregroundColor: MaterialStatePropertyAll(
                    Colors.white,
                  ),
                ),
                child: const Text(
                  'Get\nResults!',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
