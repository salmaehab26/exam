import 'package:exam1/second_screen.dart';
import 'package:exam1/third_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        secondescreen.routeName: (context) => const secondescreen(),
        thirdscreen.routeName: (context) => const thirdscreen(),
      },
    );
  }
}
