// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:kuku_fm/core/color_constants.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        automaticallyImplyLeading: false,
        title: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: ColorConstants.bottomnavGrey.withOpacity(0.1)),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 38,
                  child: TextFormField(
                    cursorColor: ColorConstants.bottomnavGrey,
                    decoration: InputDecoration(
                        hintText: "Search on Kuku FM",
                        hintStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                        suffixIcon: Icon(Icons.mic_none,
                            size: 20, color: ColorConstants.bottomnavGrey),
                        contentPadding: EdgeInsets.only(bottom: 5, left: 20),
                        border: InputBorder.none),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Top Searches",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              SizedBox(
                child: GridView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 40,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstants.bottomnavGrey.withOpacity(0.1)),
                    child: Padding(
                        padding: EdgeInsets.only(left: 8, top: 8, bottom: 8),
                        child: Text(
                          "data or another data or sdfadf dsfhfuhdsb dsjfisdjfui dfuysdyfu",
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                        )),
                  ),
                ),
              ),
              Divider(
                height: 50,
              ),
              Text(
                "Genres",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 600,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 60,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstants.secondaryRed),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, top: 35),
                      child: Text(
                        "History",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
