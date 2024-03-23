import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 110,
        height: 110,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(13),
            color: Colors.red),
      ),
    );
  }
}
