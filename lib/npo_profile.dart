import 'package:flutter/material.dart';
import 'assets.dart';
import 'search_section.dart';
import 'home_section.dart';
import 'user_profile_dashboard.dart';
import 'result_screen.dart';

class NPOProfile extends StatefulWidget {
  const NPOProfile({Key? key}) : super(key: key);

  @override
  State<NPOProfile> createState() => _NPOProfileState();
}

class _NPOProfileState extends State<NPOProfile> {
  bool firstLook = true;
  int selectedIndex = 2;
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
                    firstLook = false;
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: const Color(0xfffff6ef),
      body: firstLook
          ? const ResultScreen()
          : IndexedStack(
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
