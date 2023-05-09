import 'package:flutter/material.dart';
import 'package:reignite_social/questionnaire_screen_4.dart';
import 'assets.dart';
import 'common_components.dart';

void main() {
  runApp(
    const MaterialApp(home: Question3()),
  );
}

class Question3 extends StatefulWidget {
  const Question3({Key? key}) : super(key: key);

  @override
  State<Question3> createState() => _Question3State();
}

class _Question3State extends State<Question3> {
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
                  AssetImage(
                      'assets/icons/material-symbols_location-on-outline.png'),
                ),
              ), // values icon
              const SizedBox(height: 5.44),
              const SizedBox(
                width: 312,
                child: Text(
                  "What types of communities would you like to support?",
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
                          questionOption: "Local",
                          imagePath: 'assets/icons/local.png',
                        ),
                        QuestionnaireCard(
                          questionOption: "Nationwide",
                          imagePath: 'assets/icons/flag.png',
                        ),
                        QuestionnaireCard(
                          questionOption: "International",
                          imagePath: 'assets/icons/globe.png',
                        ),
                        QuestionnaireCard(
                          questionOption: "No Preference",
                          imagePath: 'assets/icons/none.png',
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
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kSlateColor,
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
                    builder: (context) => const Question4(),
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
