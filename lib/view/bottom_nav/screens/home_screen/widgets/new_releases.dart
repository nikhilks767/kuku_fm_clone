import 'package:flutter/material.dart';
import 'package:kuku_fm/view/bottom_nav/screens/home_screen/widgets/custom_list_card.dart';

class NewReleases extends StatelessWidget {
  const NewReleases({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("New Releases"),
      //   centerTitle: true,
      // ),
      body: ListView.separated(
        itemCount: 20,
        itemBuilder: (context, index) => CustomLListCard(),
        separatorBuilder: (context, index) => SizedBox(height: 15),
      ),
    );
  }
}
