import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff6ef),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          height: 1100,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 35, right: 15, top: 55),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textDirection: TextDirection.ltr,
                  children: [
                    SizedBox(
                        height: 144,
                        width: 144,
                        child: CircleAvatar(
                            radius: 71,
                            backgroundColor: Color(0xff526268),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/berkeley campanille.jpg'),
                              radius: 70,
                            ))),
                    SizedBox(width: 15),
                    SizedBox(
                        height: 130,
                        width: 200,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 160,
                              height: 52,
                              child: Text(
                                "Berkeley Student",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
                              width: 160,
                              height: 20,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                textDirection: TextDirection.ltr,
                                children: [
                                  ImageIcon(
                                    AssetImage(
                                        "assets/icons/social_issues/student.png"),
                                    color: Color(0xff526268),
                                    size: 24,
                                  ),
                                  ImageIcon(
                                    AssetImage(
                                        "assets/icons/social_issues/environment icon.png"),
                                    color: Color(0xff526268),
                                    size: 24,
                                  ),
                                  ImageIcon(
                                    AssetImage(
                                        "assets/icons/social_issues/health icon.png"),
                                    color: Color(0xff526268),
                                    size: 24,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15),
                            SizedBox(
                              width: 160,
                              height: 23,
                              child: Text(
                                "10 Following",
                                style: TextStyle(
                                  color: Color(0xff526268),
                                  fontSize: 18,
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                    width: 390,
                    height: 0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff526268)),
                    )),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 0, right: 15, top: 40),
                  child: SizedBox(
                    width: 350,
                    height: 220,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 350,
                          height: 41,
                          child: Text(
                            "2023 Donation Goal",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          textDirection: TextDirection.ltr,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 181,
                                  height: 56,
                                  child: Text(
                                    "28% ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 46,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 181,
                                  height: 43,
                                  child: Text(
                                    "of \$100 goal reached",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: "Open Sans",
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 130,
                                  height: 34,
                                  child: ElevatedButton(
                                    child: Text(
                                      "Donate",
                                      style: TextStyle(
                                        color: Color(0xffe35627),
                                        fontSize: 14,
                                        fontFamily: "Open Sans",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      elevation: 0,
                                      side: const BorderSide(
                                        width: 1.0,
                                        color: Color(0xffe35627),
                                      ),
                                    ),
                                    onPressed: () {
                                      print("Donate Pressed");
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 37),
                            SizedBox(
                              height: 125,
                              width: 125,
                              child: Image(
                                image: AssetImage("assets/icons/Figpie.png")
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                    width: 390,
                    height: 0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff526268)),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 350,
                      height: 39,
                      child: Text(
                        "Top Donations",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Container(
                        width: 390,
                        height: 198,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          children: <Widget>[
                            Container(
                                width: 217,
                                height: 197,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Color(0xff526268),
                                    width: 1,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image(
                                        image: AssetImage("assets/icons/Heart2heart profile image.png")
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 2)),
                                    Container(
                                      width: 217,
                                      height: 87,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color(0xffffe8d6),
                                      ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(left:10, top: 8),
                                              child: Text(
                                                "Syrian Refugee Camp",
                                                textAlign: TextAlign.left,
                                                textDirection: TextDirection.ltr,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: "Open Sans",
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left:10, top: 30),
                                              child: Text(
                                                "\$18 Donated",
                                                textAlign: TextAlign.left,
                                                textDirection: TextDirection.ltr,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontFamily: "Open Sans",
                                                  fontWeight: FontWeight.w800,
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                    ),
                                  ],
                                )),
                            SizedBox(width: 15),
                            Container(
                                width: 217,
                                height: 197,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Color(0xff526268),
                                    width: 1,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image(
                                        image: AssetImage("assets/icons/BLM.png")
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 5)),
                                    Container(
                                      width: 217,
                                      height: 87,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color(0xffffe8d6),
                                      ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(left:10, top: 8),
                                              child: Text(
                                                "Monthly Portfolio Reviews",
                                                textAlign: TextAlign.left,
                                                textDirection: TextDirection.ltr,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: "Open Sans",
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left:10, top: 30),
                                              child: Text(
                                                "\$10 Donated",
                                                textAlign: TextAlign.left,
                                                textDirection: TextDirection.ltr,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontFamily: "Open Sans",
                                                  fontWeight: FontWeight.w800,
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                    ),
                                  ],
                                )),
                            SizedBox(width: 15),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: Container(
                    width: 390,
                    height: 0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff526268)),
                    )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 350,
                      height: 39,
                      child: Text(
                        "Recent Donations",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Container(
                        width: 390,
                        height: 198,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          children: <Widget>[
                            Container(
                                width: 217,
                                height: 197,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Color(0xff526268),
                                    width: 1,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(padding: EdgeInsets.only(top:25)),
                                    Image(
                                        image: AssetImage("assets/icons/Hands-On-Bay-Area.png")
                                    ),
                                    Padding(padding: EdgeInsets.only(top:25)),
                                    Container(
                                      width: 217,
                                      height: 87,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color(0xffffe8d6),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left:10, top: 8),
                                            child: Text(
                                              "Earth Month Project",
                                              textAlign: TextAlign.left,
                                              textDirection: TextDirection.ltr,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: "Open Sans",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left:10, top: 30),
                                            child: Text(
                                              "\$18 Donated",
                                              textAlign: TextAlign.left,
                                              textDirection: TextDirection.ltr,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontFamily: "Open Sans",
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ),
                                  ],
                                )),
                            SizedBox(width: 15),
                            Container(
                                width: 217,
                                height: 197,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Color(0xff526268),
                                    width: 1,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image(
                                        image: AssetImage("assets/icons/channels4_profile 1.png")
                                    ),
                                    Container(
                                      width: 217,
                                      height: 87,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color(0xffffe8d6),
                                      ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(left:10, top: 8),
                                              child: Text(
                                                "Save The Children - Dec...",
                                                textAlign: TextAlign.left,
                                                textDirection: TextDirection.ltr,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: "Open Sans",
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left:10, top: 30),
                                              child: Text(
                                                "\$1 Donated",
                                                textAlign: TextAlign.left,
                                                textDirection: TextDirection.ltr,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontFamily: "Open Sans",
                                                  fontWeight: FontWeight.w800,
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                    ),
                                  ],
                                )),
                            SizedBox(width: 15),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
