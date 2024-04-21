import 'package:flutter/material.dart';
import 'package:lecture_flutter/learned_otg/screens/tabbar_screen2.dart';
import 'package:lecture_flutter/screens/home_screen.dart';
import 'package:lecture_flutter/screens/learned_otg.dart';
import 'package:lecture_flutter/screens/second_screen.dart';

class MyBottomNavigationBarScreen extends StatefulWidget {
  const MyBottomNavigationBarScreen({super.key});

  @override
  State<MyBottomNavigationBarScreen> createState() => _MainPageState();
}

class _MainPageState extends State<MyBottomNavigationBarScreen> {
  int tabIndex = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const SecondScreen(),
    const TabBarScreen2(),
    const LearnedOtg(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabIndex,
        onTap: (index) {
          setState(() {
            tabIndex = index;
          });
        },
        selectedItemColor: Colors.deepPurple[400],
        unselectedItemColor: Colors.grey[300],
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gif_box),
            label: 'Promo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notff',
          ),
        ],
      ),
    );
  }
}
