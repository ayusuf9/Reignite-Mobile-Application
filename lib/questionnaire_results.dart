import 'package:flutter/material.dart';
import 'package:reignite_social/assets.dart';
import 'package:reignite_social/main.dart';
import 'package:reignite_social/npo_profile.dart';

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
