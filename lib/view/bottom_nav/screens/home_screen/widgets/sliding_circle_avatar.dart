import 'package:flutter/material.dart';
import 'package:kuku_fm/core/color_constants.dart';

class SlidingCircle extends StatelessWidget {
  const SlidingCircle({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: ColorConstants.bottomnavGrey.withOpacity(0.3),
      child: CircleAvatar(
        radius: 27,
        backgroundColor: ColorConstants.secondaryRed,
        backgroundImage: NetworkImage(image),
      ),
    );
  }
}
