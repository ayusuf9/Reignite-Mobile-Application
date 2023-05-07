import 'package:flutter/material.dart';
import 'package:reignite_social/assets.dart';
import 'package:reignite_social/questionnaire_welcome.dart';
import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCreamBackgroundColor,
      body: Container(
        decoration: BoxDecoration(
          color: kCreamBackgroundColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 180),
            ImageIcon(
              AssetImage("assets/icons/Ignite Logo.png"),
              color: Color(0xff526268),
              size: 100,
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 270,
              height: 48,
              child: Text(
                "Create An Account To Get Started!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: "Open Sans",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 10, 20.0, 0),
                        child: SizedBox(
                          width: 270,
                          height: 56,
                          child: TextField(
                            style: TextStyle(
                              color: Color(0xff717171),
                              fontSize: 14,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      BorderSide(color: Color(0xffd9d9d9))),
                              labelText: 'Name',
                              hintText: 'Enter Your First and Last Name',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 10, 20.0, 0),
                        child: SizedBox(
                          width: 270,
                          height: 56,
                          child: TextField(
                            style: TextStyle(
                              color: Color(0xff717171),
                              fontSize: 14,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      BorderSide(color: Color(0xffd9d9d9))),
                              labelText: 'Email',
                              hintText: 'Enter Your Email',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 10, 20.0, 0),
                        child: SizedBox(
                          width: 270,
                          height: 56,
                          child: TextField(
                            obscureText: true,
                            style: TextStyle(
                              color: Color(0xff717171),
                              fontSize: 14,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      BorderSide(color: Color(0xffd9d9d9))),
                              labelText: 'Password',
                              hintText: 'Enter Password',
                              filled: true,
                              fillColor: Colors.white,
                              suffixIcon: IconButton(
                                icon: Icon(Icons.visibility_off),
                                onPressed: () {
                                  print("Password Visibility Pressed");
                                },
                              ),
                            ),
                          ),
                        ))
                  ],
                )),
            SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: 270,
                height: 56,
                child: ElevatedButton(
                  child: Text("Sign Up"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffe35627),
                    elevation: 0,
                  ),
                  onPressed: () {
                    ///////////
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const QuestionnaireWelcome()),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              textDirection: TextDirection.ltr,
              children: [
                Text(
                  "Already have an account?",
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LogInScreen()),
                    );
                  },
                  child: Text(" Log In",
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
            SizedBox(height: 40),
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
                    )),
                SizedBox(
                    width: 128,
                    height: 31,
                    child: Center(
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
                    ))),
                Container(
                    width: 126.50,
                    height: 0.50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff526268)),
                    ))
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              textDirection: TextDirection.ltr,
              children: [
                GestureDetector(
                    onTap: () {
                      print("Facebook Login Pressed");
                    },
                    child: ImageIcon(
                      AssetImage("assets/icons/ic_baseline-facebook.png"),
                      color: Color(0xff526268),
                      size: 24,
                    )),
                SizedBox(width: 70),
                GestureDetector(
                  onTap: () {
                    print("Google Login Pressed");
                  },
                  child: ImageIcon(
                    AssetImage("assets/icons/ri_google-fill.png"),
                    color: Color(0xff526268),
                    size: 24,
                  ),
                ),
                SizedBox(width: 70),
                GestureDetector(
                    onTap: () {
                      print("Twitter Login Pressed");
                    },
                    child: ImageIcon(
                      AssetImage("assets/icons/bi_twitter.png"),
                      color: Color(0xff526268),
                      size: 24,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
