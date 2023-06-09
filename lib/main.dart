import 'package:flutter/material.dart';
import 'package:reignite_social/assets.dart';
import 'package:reignite_social/home_section.dart';
import 'package:reignite_social/search_section.dart';
import 'package:reignite_social/user_profile_dashboard.dart';
import 'welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}

/////////////

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 1;
  changeIndex(int newIndex) {
    if (newIndex != selectedIndex) {
      setState(() {
        selectedIndex = newIndex;
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCreamBackgroundColor,
      bottomNavigationBar: SafeArea(
        child: SizedBox(
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Divider(
                thickness: 0.5,
                height: 1,
                color: kSlateColor,
              ),
              Expanded(
                child: BottomNavigationBar(
                  elevation: 0,
                  backgroundColor: kCreamBackgroundColor,
                  iconSize: 35,
                  selectedItemColor: kOrangeColor,
                  unselectedItemColor: kSlateColor,
                  onTap: (value) {
                    changeIndex(value);
                  },
                  currentIndex: selectedIndex,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  items: const [
                    BottomNavigationBarItem(
                        icon: ImageIcon(
                          AssetImage(btbSearch),
                        ),
                        label: "Search",
                        activeIcon: ImageIcon(
                          AssetImage(btbSearchActive),
                        )),
                    BottomNavigationBarItem(
                        icon: ImageIcon(
                          AssetImage(btbHome),
                        ),
                        label: "Home",
                        activeIcon: ImageIcon(
                          AssetImage(btbHomeActive),
                          size: 40,
                        )),
                    BottomNavigationBarItem(
                        icon: ImageIcon(
                          AssetImage(btbUser),
                        ),
                        label: "User",
                        activeIcon: ImageIcon(
                          AssetImage(btbUserActive),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: const [
          SearchSection(),
          HomeSection(),
          UserProfile(),
        ],
      ),
    );
  }
}
