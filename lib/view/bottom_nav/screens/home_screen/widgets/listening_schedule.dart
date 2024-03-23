// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kuku_fm/core/color_constants.dart';

class ListeningSchedule extends StatelessWidget {
  const ListeningSchedule({super.key, this.isicon = true});
  final bool isicon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Stack(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 30),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: ColorConstants.primaryRed,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/20426237/pexels-photo-20426237/free-photo-of-a-couple-holding-hands-and-walking-on-a-beach.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor:
                          ColorConstants.primaryBlack.withOpacity(0.4),
                      child: CircleAvatar(
                        radius: 13,
                        backgroundColor: ColorConstants.bottomNav,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              left: 0,
              right: 35,
              child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/20426237/pexels-photo-20426237/free-photo-of-a-couple-holding-hands-and-walking-on-a-beach.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                          fit: BoxFit.cover)),
                  child: Padding(
                      padding: const EdgeInsets.all(35),
                      child: isicon
                          ? CircleAvatar(
                              backgroundColor:
                                  ColorConstants.primaryBlack.withOpacity(0.4),
                              child: Icon(
                                Icons.play_arrow_rounded,
                                color: ColorConstants.primaryWhite,
                              ),
                            )
                          : SizedBox())))
        ],
      ),
    );
  }
}
