import 'package:flutter/material.dart';

class Postscreen extends StatelessWidget {
   Postscreen({super.key});

  var arrContent = [
    {"img": "assets/images/img1.png", "name": "Your Story"},
    {"img": "assets/images/img2.png", "name": "New"},
    {"img": "assets/images/img3.png", "name": "Friends"},
    {"img": "assets/images/img4.png", "name": "Sport "},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(),
            child: Image.asset(
              arrContent[index]["img"].toString(),
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          );
        },
        itemCount: arrContent.length,
      ),
    );
  }
}
