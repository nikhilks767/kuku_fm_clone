// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:kuku_fm/core/color_constants.dart';

class CustomHeading extends StatelessWidget {
  const CustomHeading(
      {super.key,
      required this.text,
      required this.icon,
      this.istext = false,
      this.isicon = true});
  final String text;
  final IconData icon;
  final bool istext;
  final bool isicon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Icon(icon, color: ColorConstants.primaryRed),
              SizedBox(width: 8),
              Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.primaryWhite),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Row(
            children: [
              istext == true
                  ? Text("See all", style: TextStyle(fontSize: 13))
                  : SizedBox(),
              SizedBox(width: 7),
              isicon
                  ? CircleAvatar(
                      radius: 7,
                      backgroundColor: ColorConstants.primaryRed,
                      child: Center(
                          child: Icon(Icons.keyboard_arrow_right, size: 14)),
                    )
                  : SizedBox()
            ],
          ),
        )
      ],
    );
  }
}
