// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kuku_fm/core/color_constants.dart';
import 'package:kuku_fm/view/bottom_nav/screens/home_screen/widgets/custom_list_card.dart';

class HistoryTab extends StatelessWidget {
  const HistoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ColorConstants.bottomnavGrey.withOpacity(0.2)),
          child: SizedBox(
            height: 38,
            child: TextFormField(
              cursorColor: ColorConstants.primaryWhite,
              cursorHeight: 25,
              decoration: InputDecoration(
                  hintText: "Search your listening history",
                  contentPadding: EdgeInsets.only(bottom: 15, left: 20),
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      color: ColorConstants.primaryWhite),
                  border: InputBorder.none),
            ),
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 18,
            backgroundColor: ColorConstants.bottomnavGrey.withOpacity(0.4),
            child: CircleAvatar(
              radius: 17,
              backgroundColor: ColorConstants.primaryBlack.withOpacity(0.5),
              child: Icon(
                Icons.delete,
                color: ColorConstants.primaryWhite,
              ),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today",
                style: TextStyle(
                    color: ColorConstants.primaryWhite,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CustomLListCard(isicon: true),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Yesterday",
                style: TextStyle(
                    color: ColorConstants.primaryWhite,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CustomLListCard(isicon: true),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
