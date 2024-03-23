// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:kuku_fm/core/color_constants.dart';
import 'package:kuku_fm/core/image_constants.dart';
import 'package:kuku_fm/view/bottom_nav/bottom_nav.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            ImageConstants.loginBg,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.78),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImageConstants.kukuFm,
                  scale: 1,
                ),
                SizedBox(
                  height: 5,
                ),
                Image.asset(
                  ImageConstants.loginTxt,
                  scale: 1.1,
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Login for personalised listening"),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BottomNavScreen(indexvalue: 0)));
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.phone_android,
                          color: ColorConstants.primaryWhite,
                          size: 18,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Continue via phone",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 15),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: ColorConstants.primaryWhite,
                          size: 18,
                        )
                      ],
                    ),
                    style: ButtonStyle(
                        padding: MaterialStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 30)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3))),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.red[800])),
                  ),
                  SizedBox(height: 5),
                  RichText(
                      text: TextSpan(
                    style: TextStyle(fontSize: 8),
                    children: [
                      TextSpan(text: "by continue you will accept our"),
                      TextSpan(
                          text: " T&C",
                          style: TextStyle(color: ColorConstants.primaryRed)),
                      TextSpan(text: " and"),
                      TextSpan(
                          text: " Privacy Policy",
                          style: TextStyle(color: ColorConstants.primaryRed)),
                    ],
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
