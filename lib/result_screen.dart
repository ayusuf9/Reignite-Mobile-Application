import 'package:flutter/material.dart';
import 'package:reignite_social/assets.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // NPO Name
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 0.5,
                  color: Color(0xff526268),
                ),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            height: 130,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Empowr",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextButton(
                      onPressed: null,
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xffe35627),
                        minimumSize: const Size(110, 28),
                      ),
                      child: const Text(
                        "Donate",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            margin: const EdgeInsets.only(right: 7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const ImageIcon(
                              AssetImage(
                                  'assets/icons/ph_graduation-cap-light.png'),
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            margin: const EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const ImageIcon(
                              AssetImage('assets/icons/Laptop Screen.png'),
                            ),
                          ),
                          const Icon(
                            Icons.circle,
                            size: 8,
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 20),
                            child: const Text(
                              "Atlanta, GA",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: "Open Sans",
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          )
                        ],
                      ),
                      const Text(
                        "70K Following",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Posts
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 30),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 0.5,
                          color: Color(0xff526268),
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                            top: 30,
                          ),
                          margin: const EdgeInsets.only(
                            bottom: 30,
                          ),
                          child: Image.asset('assets/icons/grad_image.png'),
                        ),
                        const Text(
                          "We uplift the black community by creating school-to-career pipelines. We understand that the key to economic prosperity starts with education.",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: "Open Sans",
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 150,
                                height: 40,
                                child: OutlinedButton(
                                  onPressed: null,
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    side: const BorderSide(
                                      color: Color(0xffe35627),
                                    ),
                                    minimumSize: const Size(110, 28),
                                  ),
                                  child: const Text(
                                    "Follow +",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xffe35627),
                                      fontSize: 16,
                                      fontFamily: "Open Sans",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 150,
                                height: 40,
                                child: OutlinedButton(
                                  onPressed: null,
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    side: const BorderSide(
                                      color: Color(0xffe35627),
                                    ),
                                    minimumSize: const Size(110, 28),
                                  ),
                                  child: const Text(
                                    "Visit Website",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xffe35627),
                                      fontSize: 16,
                                      fontFamily: "Open Sans",
                                      fontWeight: FontWeight.w600,
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
                  // Current Projects Text
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: const Text(
                      "Current Projects ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  // Horizontal Scroll for current projects
                  SingleChildScrollView(
                    padding: const EdgeInsets.only(bottom: 30),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xff526268),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              // Thumbnail
                              SizedBox(
                                width: 220,
                                height: 125,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'assets/icons/1lpc.png',
                                    scale: 0.5,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 220,
                                padding: const EdgeInsets.only(left: 7, top: 3),
                                decoration: const BoxDecoration(
                                  color: Color(0xffffe8d7),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "One Laptop per Child",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "\$3,000 Goal - \$900 Donated",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xff526268),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              // Thumbnail
                              SizedBox(
                                width: 220,
                                height: 125,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'assets/icons/ntwk.png',
                                    scale: 0.5,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 220,
                                padding: const EdgeInsets.only(left: 7, top: 3),
                                decoration: const BoxDecoration(
                                  color: Color(0xffffe8d7),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Networking Events",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "\$1,500 Goal - \$400 Donated",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xff526268),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              // Thumbnail
                              SizedBox(
                                width: 220,
                                height: 125,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'assets/icons/intern.png',
                                    width: 220,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 220,
                                padding: const EdgeInsets.only(left: 7, top: 3),
                                decoration: const BoxDecoration(
                                  color: Color(0xffffe8d7),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Internship Matching",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "\$300 Goal - \$50 Donated",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: kSlateColor,
                          width: 0.5,
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Recent Updates",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 15,
                          ),
                          width: 336,
                          height: 220,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "June 2022",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const SizedBox(height: 5.50),
                              const Text(
                                "Empowr is recruiting high school students for our upcoming cohort. If you know of any incoming 9th or 10th graders who would be interested, we invite them to join.",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: const [
                                        SizedBox(
                                          width: 50,
                                          child: ImageIcon(
                                            AssetImage(
                                                'assets/icons/Favorite.png'),
                                            color: kSlateColor,
                                            size: 40,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 50,
                                          child: ImageIcon(
                                            AssetImage(
                                                'assets/icons/Support.png'),
                                            color: kSlateColor,
                                            size: 40,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 50,
                                          child: ImageIcon(
                                            AssetImage(
                                                'assets/icons/Clapping.png'),
                                            color: kSlateColor,
                                            size: 40,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 150,
                                      height: 40,
                                      child: OutlinedButton(
                                        onPressed: null,
                                        style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          side: const BorderSide(
                                            color: Color(0xffe35627),
                                          ),
                                          minimumSize: const Size(110, 28),
                                        ),
                                        child: const Text(
                                          "Learn More",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: const Color(0xffe35627),
                                            fontSize: 16,
                                            fontFamily: "Open Sans",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 15,
                          ),
                          width: 336,
                          height: 440,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "April 2022",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const SizedBox(height: 5.50),
                              Expanded(
                                child: Image.asset('assets/icons/bac.png'),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: const [
                                        SizedBox(
                                          width: 50,
                                          child: ImageIcon(
                                            AssetImage(
                                                'assets/icons/Favorite.png'),
                                            color: kSlateColor,
                                            size: 40,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 50,
                                          child: ImageIcon(
                                            AssetImage(
                                                'assets/icons/Support.png'),
                                            color: kSlateColor,
                                            size: 40,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 50,
                                          child: ImageIcon(
                                            AssetImage(
                                                'assets/icons/Clapping.png'),
                                            color: kSlateColor,
                                            size: 40,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 150,
                                      height: 40,
                                      child: OutlinedButton(
                                        onPressed: null,
                                        style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          side: const BorderSide(
                                            color: Color(0xffe35627),
                                          ),
                                          minimumSize: const Size(110, 28),
                                        ),
                                        child: const Text(
                                          "Learn More",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: const Color(0xffe35627),
                                            fontSize: 16,
                                            fontFamily: "Open Sans",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 15,
                          ),
                          width: 336,
                          height: 420,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "February 2021",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const SizedBox(height: 5.50),
                              Expanded(
                                child: Image.asset('assets/icons/triplec.png'),
                              ),
                              const Text(
                                "Our non-profit teaches high school students tech skills to help them land 6-figure jobs. \n\nNot only do we teach teach career skills, but our mission encompasses the need to raise infor...",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: const [
                                        SizedBox(
                                          width: 50,
                                          child: ImageIcon(
                                            AssetImage(
                                                'assets/icons/Favorite.png'),
                                            color: kSlateColor,
                                            size: 40,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 50,
                                          child: ImageIcon(
                                            AssetImage(
                                                'assets/icons/Support.png'),
                                            color: kSlateColor,
                                            size: 40,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 50,
                                          child: ImageIcon(
                                            AssetImage(
                                                'assets/icons/Clapping.png'),
                                            color: kSlateColor,
                                            size: 40,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 150,
                                      height: 40,
                                      child: OutlinedButton(
                                        onPressed: null,
                                        style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          side: const BorderSide(
                                            color: Color(0xffe35627),
                                          ),
                                          minimumSize: const Size(110, 28),
                                        ),
                                        child: const Text(
                                          "Learn More",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: const Color(0xffe35627),
                                            fontSize: 16,
                                            fontFamily: "Open Sans",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
