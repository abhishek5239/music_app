import 'package:flutter/material.dart';
import 'package:music_app/pages/home_page.dart';
import 'package:music_app/pages/likepage.dart';

class frontscreen extends StatefulWidget {
  const frontscreen({Key? key}) : super(key: key);

  @override
  State<frontscreen> createState() => _frontscreenState();
}

class _frontscreenState extends State<frontscreen> {
  int curr_index = 0;
  final screens = [home_page(), like_page()];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: screens[curr_index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: curr_index,
          onTap: (index) => setState(() {
            curr_index = index;
          }),
          // backgroundColor: Colors.redAccent,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          ],
        ),
      );

  }
}
