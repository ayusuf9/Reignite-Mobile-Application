import 'package:flutter/material.dart';

class HifiWelcomeScreen extends StatelessWidget{
  const HifiWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
        width: 390,
        height: 844,
        color: Color(0xfffff6ef),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            ImageIcon(
              AssetImage("assets/icons/Ignite Logo.png"),
              color: Color(0xff526268),
              size: 100,
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 232,
              height: 45,
              child: Text(
                "REIGNITE",
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Color(0xff293235),
                  fontSize: 44,
                  fontFamily: "Open Sans",
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            SizedBox(height: 83.60),
            Container(
              width: 390,
              height: 334,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                ),
                color: Color(0xffffe8d6),
              ),
              padding: const EdgeInsets.only(bottom: 30),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    SizedBox(
                      width: 296,
                      height: 24,
                      child: Text(
                        "Welcome !",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 11),
                    SizedBox(
                      width: 296,
                      height: 61,
                      child: Text(
                        "Create an account and get one step closer to making your community a better place.",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    SizedBox(height: 11),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textDirection: TextDirection.rtl,
                      children: [
                        GestureDetector(
                            onTap: () {
                              print("Get Started pressed");
                            },
                            child: Container(
                              width: 130,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffe35627),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  SizedBox(
                                      width: 130,
                                      height: 40,
                                      child: Center(
                                        child: Text(
                                          "Get Started",
                                          textAlign: TextAlign.center,
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: "Open Sans",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                  ),
                                ],
                              ),
                            )
                        ),
                        SizedBox(width: 30),
                        GestureDetector(
                            onTap: () {
                              print("Log In Pressed");
                            },
                            child: Container(
                              width: 130,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0xffe35627), width: 1, ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  SizedBox(
                                      width: 128,
                                      height: 40,
                                      child: Center(
                                        child: Text(
                                          "Log In ",
                                          textAlign: TextAlign.center,
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                            color: Color(0xffe35627),
                                            fontSize: 14,
                                            fontFamily: "Open Sans",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                  ),
                                ],
                              ),
                            )
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textDirection: TextDirection.ltr,
                      children: [
                        Text(
                          "Are you an Non-Profit?",
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {print("Switch View Pressed");},
                          child: Text(
                              " Switch to NPO View",
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold
                              )
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textDirection: TextDirection.ltr,
                      children: [
                        Container(
                            width: 135.50,
                            height: 0.50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff526268)),
                            )
                        ),
                        SizedBox(
                            width: 128,
                            height: 31,
                            child:Center(
                                child: Text(
                                  "Or connect with",
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    color: Color(0xff526268),
                                    fontSize: 14,
                                    fontFamily: "Open Sans",
                                    fontWeight: FontWeight.w300,
                                  ),
                                )
                            )
                        ),
                        Container(
                            width: 126.50,
                            height: 0.50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff526268)),
                            )
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textDirection: TextDirection.ltr,
                      children: [
                        GestureDetector(
                            onTap: () {print("Facebook Login Pressed");},
                            child: ImageIcon(
                              AssetImage("assets/icons/ic_baseline-facebook.png"),
                              color: Color(0xff526268),
                              size: 24,
                            )
                        ),
                        SizedBox(width: 70),
                        GestureDetector(
                          onTap: () {print("Google Login Pressed");},
                          child: ImageIcon(
                            AssetImage("assets/icons/ri_google-fill.png"),
                            color: Color(0xff526268),
                            size: 24,
                          ),
                        ),
                        SizedBox(width: 70),
                        GestureDetector(
                            onTap: () {print("Twitter Login Pressed");},
                            child: ImageIcon(
                              AssetImage("assets/icons/bi_twitter.png"),
                              color: Color(0xff526268),
                              size: 24,
                            )
                        )
                      ],
                    )
                  ]
              ),
            )
          ],
        )

    );
  }
}