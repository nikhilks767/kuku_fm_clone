// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kuku_fm/view/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: SplashScreen(),
    );
  }
}
