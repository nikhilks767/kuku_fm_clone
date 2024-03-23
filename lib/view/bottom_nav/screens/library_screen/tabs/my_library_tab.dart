// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:kuku_fm/core/color_constants.dart';
import 'package:kuku_fm/view/bottom_nav/screens/home_screen/widgets/custom_heading.dart';
import 'package:kuku_fm/view/bottom_nav/screens/home_screen/widgets/listening_schedule.dart';

class MyLibraryTab extends StatelessWidget {
  const MyLibraryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomHeading(
                text: "Recently Played (2)",
                icon: Icons.play_circle_outline,
                isicon: false),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
              child: Column(
                children: [
                  SizedBox(
                    height: 160,
                    child: GridView.builder(
                      itemCount: 2,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 50, crossAxisCount: 2),
                      itemBuilder: (context, index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListeningSchedule(isicon: false),
                          SizedBox(height: 3),
                          Text(
                            "Panchathanthram",
                            style: TextStyle(
                                color: ColorConstants.primaryWhite,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Episode 1/20",
                            style: TextStyle(
                                color: ColorConstants.bottomnavGrey
                                    .withOpacity(0.7),
                                fontSize: 11),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 20,
            ),
            CustomHeading(
                text: "Saved for later (5)",
                icon: Icons.bookmark_border,
                isicon: false),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
              child: SizedBox(
                // height: 500,
                child: GridView.builder(
                  itemCount: 5,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 50,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListeningSchedule(isicon: false),
                      SizedBox(height: 3),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Panchathanthram",
                                style: TextStyle(
                                    color: ColorConstants.primaryWhite,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "20 Episodes",
                                style: TextStyle(
                                    color: ColorConstants.bottomnavGrey
                                        .withOpacity(0.7),
                                    fontSize: 11),
                              )
                            ],
                          ),
                          Icon(Icons.more_vert)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
