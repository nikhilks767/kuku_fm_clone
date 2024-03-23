// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kuku_fm/core/color_constants.dart';

class CustomLListCard extends StatelessWidget {
  const CustomLListCard({super.key, this.isicon = false});
  final bool isicon;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        height: 110,
        child: Row(
          children: [
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7PZ5Sc4RNgXEAEdHmnfRGKb8no87q3uWdIA&usqp=CAU"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red),
            ),
            SizedBox(width: 15),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mahabharatham",
                            style: TextStyle(
                                fontSize: 15,
                                color: ColorConstants.primaryWhite)),
                        SizedBox(height: 3),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: ColorConstants.darkGreen,
                              child: Icon(Icons.star, size: 12),
                            ),
                            SizedBox(width: 3),
                            Text(
                              "5.0 (31k+ listens).01 hr 43 min",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: ColorConstants.primaryWhite
                                      .withOpacity(0.6)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    isicon == true ? Icon(Icons.more_vert) : SizedBox()
                  ],
                ),
                SizedBox(height: 5),
                Text(
                    "18 Parvangal, 2000 Adhyayangal,Oru lakshatholam shlokangal ennivayellamayi parannu kidakkunna samudramanu",
                    style: TextStyle(
                        fontSize: 11,
                        color: ColorConstants.primaryWhite.withOpacity(0.6)),
                    maxLines: 3)
              ],
            ))
          ],
        ),
      ),
    );
  }
}
