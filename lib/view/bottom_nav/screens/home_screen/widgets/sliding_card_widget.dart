// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, unused_field

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kuku_fm/core/color_constants.dart';

import 'package:kuku_fm/view/dummy_db.dart';

class SlidingCard extends StatefulWidget {
  const SlidingCard({super.key});

  @override
  State<SlidingCard> createState() => _SlidingCardState();
}

class _SlidingCardState extends State<SlidingCard> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: DummyDb.slidingcard.length,
      itemBuilder: (context, index, realIndex) => Stack(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width / 1.35,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(DummyDb.slidingcard[index]),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(8)),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: CircleAvatar(
              radius: 15,
              backgroundColor: ColorConstants.primaryWhite,
              child: Icon(
                Icons.play_arrow_rounded,
                color: ColorConstants.primaryBlack,
              ),
            ),
          )
        ],
      ),
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 3,
        height: 180,
      ),
    );
  }
}
