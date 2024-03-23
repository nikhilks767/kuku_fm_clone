// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'package:kuku_fm/core/color_constants.dart';
import 'package:kuku_fm/view/bottom_nav/bottom_nav.dart';

import 'package:kuku_fm/view/bottom_nav/screens/home_screen/widgets/custom_card.dart';
import 'package:kuku_fm/view/bottom_nav/screens/home_screen/widgets/custom_heading.dart';
import 'package:kuku_fm/view/bottom_nav/screens/home_screen/widgets/custom_list_card.dart';
import 'package:kuku_fm/view/bottom_nav/screens/home_screen/widgets/listening_schedule.dart';
import 'package:kuku_fm/view/bottom_nav/screens/home_screen/widgets/new_releases.dart';
import 'package:kuku_fm/view/bottom_nav/screens/home_screen/widgets/sliding_card_widget.dart';
import 'package:kuku_fm/view/bottom_nav/screens/home_screen/widgets/sliding_circle_avatar.dart';
import 'package:kuku_fm/view/bottom_nav/screens/home_screen/widgets/top20.dart';
import 'package:kuku_fm/view/bottom_nav/screens/library_screen/tabs/history_tab.dart';
import 'package:kuku_fm/view/bottom_nav/screens/profile_screen/profile_screen.dart';
import 'package:kuku_fm/view/bottom_nav/screens/search_screen/search_screen.dart';
import 'package:kuku_fm/view/dummy_db.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // bool _showReleases = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ));
                },
                child: CircleAvatar(
                  radius: 17,
                  backgroundColor: ColorConstants.bottomnavGrey,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/13963443/pexels-photo-13963443.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Expanded(
                child: SizedBox(
                  height: 38,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorConstants.bottomnavGrey.withOpacity(0.1)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: InkWell(
                          overlayColor: MaterialStatePropertyAll(
                              ColorConstants.transparent),
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BottomNavScreen(indexvalue: 2)));
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Icon(
                                  Icons.search,
                                  size: 20,
                                  color: ColorConstants.bottomnavGrey,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Search on Kuku FM",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: ColorConstants.primaryWhite
                                          .withOpacity(0.7)),
                                ),
                              ]),
                              Icon(
                                Icons.mic_none,
                                size: 20,
                                color: ColorConstants.bottomnavGrey,
                              ),
                            ],
                          ),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: ColorConstants.bottomnavGrey.withOpacity(0.15),
            radius: 17,
            child: InkWell(
                onTap: () {
// BottomSheet---------------------------
                  showBottomSheet(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(10))),
                      elevation: 2,
                      context: context,
                      builder: (context) => Container(
                            width: double.infinity,
                            height: 280,
                            child: Padding(
                              padding: const EdgeInsets.all(30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Explore shows by language",
                                    style: TextStyle(
                                        color: ColorConstants.primaryWhite,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  SizedBox(height: 20),
                                  SizedBox(
                                    child: GridView.builder(
                                      itemCount: 6,
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisSpacing: 20,
                                              crossAxisSpacing: 10,
                                              mainAxisExtent: 30,
                                              crossAxisCount: 3),
                                      itemBuilder: (context, index) => InkWell(
                                        onTap: () {
                                          setState(() {});
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: ColorConstants
                                                      .bottomnavGrey
                                                      .withOpacity(0.3))),
                                          child: Center(
                                              child: Text(
                                            "Hindi",
                                            style: TextStyle(
                                                color: ColorConstants
                                                    .secondaryRed),
                                          )),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 3),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                color: ColorConstants
                                                    .bottomnavGrey
                                                    .withOpacity(0.3))),
                                        child: Center(
                                            child: Text(
                                          "Malayalam",
                                          style: TextStyle(
                                              color: ColorConstants.pink),
                                        )),
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 35, vertical: 3),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                color: ColorConstants
                                                    .bottomnavGrey
                                                    .withOpacity(0.3))),
                                        child: Center(
                                            child: Text(
                                          "English",
                                          style: TextStyle(
                                              color: ColorConstants.green),
                                        )),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            "Cancel",
                                            style: TextStyle(
                                                color:
                                                    ColorConstants.primaryWhite,
                                                fontSize: 12),
                                          )),
                                      SizedBox(width: 15),
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 6),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color:
                                                  ColorConstants.primaryWhite),
                                          child: Center(
                                            child: Text(
                                              "Save Changes",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 11,
                                                  color: ColorConstants
                                                      .primaryBlack),
                                            ),
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ));
                },
                child: Icon(Icons.translate,
                    color: ColorConstants.primaryWhite, size: 17)),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // HomeScreen top Sliding Card-------------------------
            SlidingCard(),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 180,
                  // CircleAvatar Sliding----------------------------
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(left: 15, right: 20),
                            child: Column(
                              children: [
                                SlidingCircle(
                                    image: DummyDb.homeWidgets[index]
                                        ["circle_pic"]),
                                SizedBox(height: 2),
                                Text(
                                  DummyDb.homeWidgets[index]["circle_data"],
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(height: 10),
                                SlidingCircle(
                                    image: DummyDb.homeWidgets[index]
                                        ["circle_pic"]),
                                SizedBox(height: 2),
                                Text(
                                  DummyDb.homeWidgets[index]["circle_data"],
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                      separatorBuilder: (context, index) => SizedBox(width: 15),
                      itemCount: 6),
                ),
                Divider(
                  indent: 15,
                  endIndent: 15,
                  height: 30,
                ),
                // Your Listening Schedule------------------------------
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      overlayColor:
                          MaterialStatePropertyAll(ColorConstants.transparent),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    BottomNavScreen(indexvalue: 3)));
                      },
                      child: CustomHeading(
                          text: "Your Listening Schedule",
                          icon: Icons.play_circle_outline),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 146,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(left: 20, right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListeningSchedule(),
                              SizedBox(height: 2),
                              Text(
                                "Episodes",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: ColorConstants.bottomnavGrey),
                              )
                            ],
                          ),
                        ),
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 6),
                      ),
                    ),
                    Divider(
                      indent: 15,
                      endIndent: 15,
                      height: 20,
                    ),
                    CustomHeading(
                        text: "Top 20 in India",
                        icon: Icons.signal_cellular_alt),
                    SizedBox(
                      height: 130,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: List.generate(
                              6,
                              (index) => Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Top20(index: index),
                                  ))),
                    ),
                    Divider(
                      indent: 15,
                      endIndent: 15,
                      height: 30,
                    ),
                    InkWell(
                      overlayColor:
                          MaterialStatePropertyAll(ColorConstants.transparent),
                      onTap: () {},
                      child: CustomHeading(
                          text: "New Releases",
                          icon: Icons.headphones_outlined),
                    ),
                    SizedBox(
                      height: 130,
                      child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(left: 20, right: 15),
                          child: CustomCard(
                            image: DummyDb.newReleases[index],
                          ),
                        ),
                        separatorBuilder: (context, index) => SizedBox(),
                      ),
                    ),
                    Divider(
                      indent: 15,
                      endIndent: 15,
                      height: 30,
                    ),
                    CustomHeading(
                        istext: true,
                        text: "Top Audios for you",
                        icon: Icons.music_note_outlined),
                    Column(
                        children: List.generate(
                            6,
                            (index) => Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 15, bottom: 8),
                                  child: CustomLListCard(),
                                ))),
                    Divider(
                      indent: 15,
                      endIndent: 15,
                      height: 30,
                    ),
                    CustomHeading(
                      text: "Editors pick",
                      icon: Icons.star_border,
                      istext: true,
                    ),
                    Column(
                        children: List.generate(
                            4,
                            (index) => Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 15, bottom: 8),
                                  child: CustomLListCard(),
                                ))),
                    Divider(
                      indent: 15,
                      endIndent: 15,
                      height: 30,
                    ),
                    CustomHeading(
                      text: "Trending",
                      icon: Icons.trending_up,
                      istext: true,
                    ),
                    Column(
                        children: List.generate(
                            8,
                            (index) => Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 15, bottom: 8),
                                  child: CustomLListCard(),
                                ))),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
