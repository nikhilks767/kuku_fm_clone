// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kuku_fm/core/color_constants.dart';
import 'package:kuku_fm/view/bottom_nav/screens/library_screen/tabs/downloads_tab.dart';
import 'package:kuku_fm/view/bottom_nav/screens/library_screen/tabs/history_tab.dart';
import 'package:kuku_fm/view/bottom_nav/screens/library_screen/tabs/my_library_tab.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              indicator: BoxDecoration(),
              dividerColor: ColorConstants.primaryBlack.withOpacity(0),
              labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              labelColor: ColorConstants.primaryWhite,
              unselectedLabelColor:
                  ColorConstants.bottomnavGrey.withOpacity(0.4),
              padding: EdgeInsets.only(top: 10),
              tabs: [
                Tab(
                  text: "My Library",
                ),
                Tab(
                  text: "Downloads",
                ),
                Tab(
                  text: "History",
                )
              ]),
          body: TabBarView(children: [
            MyLibraryTab(),
            DownloadsTab(),
            HistoryTab(),
          ]),
        ),
      ),
    );
  }
}
