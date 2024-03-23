// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kuku_fm/core/color_constants.dart';
import 'package:kuku_fm/core/image_constants.dart';
import 'package:kuku_fm/view/bottom_nav/screens/premium_screen/video_player.dart';
import 'package:rate_in_stars/rate_in_stars.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 170,
                    child: Image.network(
                      "https://video-images.vice.com/articles/60b64327f74527009a0d4cfb/lede/1622557480030-7febde59800d1e9b2d4d9dbc7e2a52f88a8179mv2d21971230s2.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 170,
                    color: ColorConstants.primaryBlack.withOpacity(0.7),
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Image.asset(
                      ImageConstants.kukuFm,
                      color: ColorConstants.primaryWhite,
                      scale: 2,
                      cacheHeight: 50,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Image.asset(
                      ImageConstants.premium,
                      scale: 4.5,
                      cacheWidth: 400,
                      cacheHeight: 300,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 80),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "7 Day",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28),
                            ),
                            SizedBox(width: 8),
                            Container(
                              height: 40,
                              width: 75,
                              color: Colors.green[600],
                              child: Center(
                                child: Text(
                                  "FREE",
                                  style: TextStyle(
                                      color: ColorConstants.primaryWhite,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Trial",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RatingStars(
                              rating: 4.5,
                              editable: true,
                              iconSize: 15,
                            ),
                            Text(" 4.5 "),
                            Text(
                              "(7.65 lakhs reviews)",
                              style: TextStyle(
                                  color: ColorConstants.bottomnavGrey
                                      .withOpacity(0.8)),
                            )
                          ],
                        ),
                        SizedBox(height: 8),
                        Container(
                          height: 210,
                          width: MediaQuery.sizeOf(context).width / 1.1,
                          decoration: BoxDecoration(
                              color: ColorConstants.premiumgrey,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        SizedBox(height: 40),
                        Container(
                          height: 210,
                          width: MediaQuery.sizeOf(context).width / 1.1,
                          decoration: BoxDecoration(
                              color: ColorConstants.premiumgrey,
                              borderRadius: BorderRadius.circular(20)),
                          child: VideoPlayerScreen(
                              videoUrl: "assets/kukuFM_ad.mp4"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 60,
                width: MediaQuery.sizeOf(context).width / 1.1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Start Free Trial",
                        style: TextStyle(
                            color: ColorConstants.primaryWhite, fontSize: 15),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: ColorConstants.primaryWhite,
                        size: 40,
                      )
                    ],
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.green[600])),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "We will remind before trial ends. Cancel Anytime.",
                style: TextStyle(
                    fontSize: 11, color: ColorConstants.bottomnavGrey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
