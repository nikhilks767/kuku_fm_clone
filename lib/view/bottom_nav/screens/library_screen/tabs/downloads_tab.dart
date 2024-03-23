// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kuku_fm/core/color_constants.dart';

class DownloadsTab extends StatelessWidget {
  const DownloadsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/notdownload.png",
              color: ColorConstants.secondaryRed,
              scale: 1.5,
            ),
            SizedBox(height: 30),
            Text(
              "Not downloaded anything!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.primaryWhite,
                  fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              "Download and listen without any interuptions",
              style:
                  TextStyle(fontSize: 12, color: ColorConstants.bottomnavGrey),
            ),
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                      color: ColorConstants.bottomnavGrey.withOpacity(0.6))),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.download,
                    size: 20,
                  ),
                  Text(
                    "Find shows to download",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.primaryWhite),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
