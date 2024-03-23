// ignore_for_file: prefer_const_constructors

import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

import 'package:kuku_fm/core/color_constants.dart';

class Top20 extends StatelessWidget {
  const Top20({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Row(
            children: [
              SizedBox(width: 25),
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.red,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/1425146/pexels-photo-1425146.jpeg?auto=compress&cs=tinysrgb&w=600"),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
          Positioned(
            left: 5,
            bottom: -25,
            child: BorderedText(
              strokeColor: ColorConstants.topnumbers,
              strokeWidth: 3,
              child: Text(
                "${index + 1}",
                style: TextStyle(
                    color: ColorConstants.bottomNav,
                    fontSize: 75,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
