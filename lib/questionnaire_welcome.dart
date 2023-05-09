import 'package:flutter/material.dart';
import 'package:reignite_social/assets.dart';
import 'package:reignite_social/main.dart';
import 'package:reignite_social/questionnaire_screen_1.dart';

class QuestionnaireWelcome extends StatefulWidget {
  const QuestionnaireWelcome({Key? key}) : super(key: key);

  @override
  State<QuestionnaireWelcome> createState() => _QuestionnaireWelcomeState();
}

class _QuestionnaireWelcomeState extends State<QuestionnaireWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCreamBackgroundColor,
      body: Center(
        child: Container(
          color: const Color(0xfffff6ef),
          padding: const EdgeInsets.only(
            bottom: 26,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const ImageIcon(
                  AssetImage("assets/icons/Ignite Logo.png"),
                  color: Color(0xff526268),
                  size: 100,
                ),
              ),
              const SizedBox(height: 35),
              const SizedBox(
                width: 150,
                height: 32,
                child: Text(
                  "Hi there!",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                width: 267,
                height: 80,
                child: Text(
                  "Let's find some charities that align with your values! It takes less than 3 minutes!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const ImageIcon(
                  AssetImage('assets/icons/person_hey.png'),
                  size: 200,
                ),
              ),
              const SizedBox(height: 60),
              TextButton(
                style: TextButton.styleFrom(
                  minimumSize: const Size(270, 56),
                  backgroundColor: const Color(0xffe35627),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Question1()),
                  );
                },
                child: const Text(
                  "Get Started!",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 16.33),
              const SizedBox(
                width: 270,
                height: 20,
                child: Text(
                  "Don’t want to personalize your account?",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: const Text(
                  "Skip Now",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
