import 'package:flutter/material.dart';
import 'package:reignite_social/assets.dart';
import 'package:reignite_social/main.dart';
import 'common_components.dart';

class SurveyResults extends StatefulWidget {
  const SurveyResults({Key? key}) : super(key: key);

  @override
  State<SurveyResults> createState() => _SurveyResultsState();
}

class _SurveyResultsState extends State<SurveyResults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCreamBackgroundColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 80, bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: const Text(
                  "These NPO’s Best Align With Your Needs!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    NPOInfoCard(
                      npoDescription:
                          "A tech nonprofit organization on a mission to make emergency help accessible. Our vision is communication access for all.\n\nWe believe that access to emergency help is a human right, and that our community members come first. We’re funded through a mixture of corporate sponsorships, grants, and donations.",
                      icon1: 'assets/icons/healthicons_health-outline.png',
                      icon2: 'assets/icons/Laptop Screen.png',
                      npoName: "AccesSOS",
                      npoLogo: 'assets/icons/accesSOS.png',
                    ),
                    NPOInfoCard(
                      npoDescription:
                          'We uplift the black community by creating school-to-career pipelines. We understand that the key to economic prosperity starts with education.\n\nYour donation helps students obtain laptops, books, additional curriculum, mentors, and more. Students graduate and obtain six-figure careers, effectively ending generational povert...',
                      icon1: 'assets/icons/ph_graduation-cap-light.png',
                      icon2: 'assets/icons/Laptop Screen.png',
                      npoName: 'Empowr',
                      npoLogo: 'assets/icons/empowr.png',
                    ),
                    NPOInfoCard(
                      npoDescription:
                          'We’re a nonprofit passionate about helping people interested in technology, no matter their experience level.\n\nThrough low to no-cost events, skill-building sessions, and workshops - Tech by Choice aims to pave the way for anyone to enter into any role in the tech industry and close any existing w...',
                      icon1: 'assets/icons/ph_graduation-cap-light.png',
                      icon2: 'assets/icons/Laptop Screen.png',
                      npoName: 'Tech By Choice',
                      npoLogo: 'assets/icons/techbychoice.png',
                    ),
                    NPOInfoCard(
                      npoDescription:
                          'A network of online communities where Israelis, Palestinians, and others with interest in the Israel-Palestine region can share their experiences and their perspectives on news, politics, history, and other topics related to the region.\n\nWe started in 2019 on Quora.com, where we currently receive over one ...',
                      icon1: 'assets/icons/ph_graduation-cap-light.png',
                      icon2: 'assets/icons/healthicons_health-outline.png',
                      npoName: 'Unity is Strength',
                      npoLogo: 'assets/icons/unity.png',
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  right: 50,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
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
                          'Complete Assessment',
                          style: TextStyle(
                            fontSize: 16,
                            color: kOrangeColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
