// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kuku_fm/core/color_constants.dart';

import 'package:kuku_fm/view/bottom_nav/screens/home_screen/home_screen.dart';
import 'package:kuku_fm/view/bottom_nav/screens/home_screen/widgets/new_releases.dart';
import 'package:kuku_fm/view/bottom_nav/screens/library_screen/library_screen.dart';
import 'package:kuku_fm/view/bottom_nav/screens/premium_screen/premium_screen.dart';
import 'package:kuku_fm/view/bottom_nav/screens/search_screen/search_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key, required this.indexvalue});
  final int indexvalue;

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List screens = [
    HomeScreen(),
    PremiumScreen(),
    SearchScreen(),
    LibraryScreen(),
  ];

  int indexval = 0;
  @override
  void initState() {
    super.initState();
    indexval = widget.indexvalue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[indexval],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexval,
          onTap: (value) {
            setState(() {
              indexval = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorConstants.primaryWhite,
          backgroundColor: ColorConstants.bottomNav,
          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          unselectedLabelStyle: TextStyle(fontSize: 11),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.diamond_outlined),
                activeIcon: Icon(Icons.diamond),
                label: "Premium"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                activeIcon: Icon(Icons.saved_search),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.book_outlined),
                activeIcon: Icon(Icons.book),
                label: "Library"),
          ]),
    );
  }
}
