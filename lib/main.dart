import 'package:flutter/material.dart';
import 'package:lecture_flutter/bottom_appbar.dart';
import 'package:lecture_flutter/bottom_navigationbar.dart';
import 'package:lecture_flutter/screens/home_screen.dart';

// import 'package:sem2/screen/bottom_tabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBottomNavigationBarScreen(),
    );
  }
}
