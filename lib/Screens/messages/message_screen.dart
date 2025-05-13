import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({super.key});

  TextEditingController searchController = TextEditingController();

  var arrContent = [
    {
      "img": "assets/images/img1.png",
      "name": "heam",
      "lastmsg": "Have a nice day",
    },
    {
      "img": "assets/images/img2.png",
      "name": "karennne",
      "lastmsg": "Have a nice day",
    },
    {
      "img": "assets/images/img3.png",
      "name": "zackjohn",
      "lastmsg": "Have a nice day",
    },
    {
      "img": "assets/images/img4.png",
      "name": "kieron_d",
      "lastmsg": "Have a nice day",
    },
    {
      "img": "assets/images/img5.png",
      "name": "craig_love",
      "lastmsg": "Have a nice day",
    },
    {
      "img": "assets/images/img6.png",
      "name": "ally",
      "lastmsg": "Have a nice day",
    },
    {
      "img": "assets/images/img8.png",
      "name": "sihal",
      "lastmsg": "Have a nice day",
    },
    {
      "img": "assets/images/img5.png",
      "name": "craig_love",
      "lastmsg": "Have a nice day",
    },
    {
      "img": "assets/images/img6.png",
      "name": "ally",
      "lastmsg": "Have a nice day",
    },
    {
      "img": "assets/images/img7.png",
      "name": "zimii",
      "lastmsg": "Have a nice day",
    },
    {
      "img": "assets/images/img8.png",
      "name": "sihal",
      "lastmsg": "Have a nice day",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.back)),
        title: Text(
          "jacob_w",
          style: TextStyle(
            fontSize: 16,
            color: Color(0XFFF9F9F9),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.add, color: Colors.white, size: 24),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0XFF262626),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(fontWeight: FontWeight.normal),
                prefixIcon: Icon(Icons.search),
                border: InputBorder.none,
              ),
            ),
          ),

          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: arrContent.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                      arrContent[index]["img"].toString(),
                    ),
                  ),
                  title: Text(
                    arrContent[index]["name"].toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  subtitle: Text(arrContent[index]["lastmsg"].toString()),
                  trailing: SvgPicture.asset("assets/images/ShapeCamera.svg"),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 60,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Color(0Xfff121212)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/images/Icon3.svg"),
              SizedBox(width: 5),
              Text(
                "Camera",
                style: TextStyle(fontSize: 15, color: Color(0XFF3897F0)),
              ),
            ],
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
