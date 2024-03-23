import 'package:flutter/material.dart';
import 'package:kuku_fm/view/bottom_nav/bottom_nav.dart';
import 'package:kuku_fm/view/bottom_nav/screens/home_screen/widgets/custom_list_card.dart';
import 'package:kuku_fm/view/bottom_nav/screens/home_screen/widgets/listening_schedule.dart';
import 'package:kuku_fm/view/bottom_nav/screens/home_screen/widgets/new_releases.dart';
import 'package:kuku_fm/view/bottom_nav/screens/home_screen/widgets/top20.dart';
import 'package:kuku_fm/view/bottom_nav/screens/premium_screen/premium_screen.dart';
import 'package:kuku_fm/view/bottom_nav/screens/premium_screen/video_player.dart';
import 'package:kuku_fm/view/bottom_nav/screens/search_screen/search_screen.dart';
import 'package:kuku_fm/view/login_screen/login_screen.dart';
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
      home: PremiumScreen(),
    );
  }
}
