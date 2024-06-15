import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:test_works/app/screens/home_screen.dart';
import 'package:test_works/app/screens/sample_screen.dart';
import 'package:test_works/app/screens/video_screen.dart';

class AnimatedBottomBar extends StatefulWidget {
  const AnimatedBottomBar({Key? key}) : super(key: key);

  @override
  State<AnimatedBottomBar> createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar> {
  List<IconData> iconList = [Icons.home, Icons.menu_book_rounded, Icons.note_alt_sharp, Icons.person];

  List pages = [
    const SampleScreen(),
    const HomeScreen(),
    const VideoShowScreen(),
    const SampleScreen(),
  ];

  int _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_bottomNavIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF512E7E),
        child: Image.asset("assets/Group 36645.png"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        inactiveColor: const Color.fromARGB(255, 146, 143, 143),
        activeColor: const Color(0xFF512E7E),
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchMargin: 8,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        backgroundColor: Colors.white,
      ),
    );
  }
}
