import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/Widgets/uihelper.dart';

import '../messages/message_screen.dart';

class HomeScreen extends StatelessWidget {
  var arrContent = [
    {"img": "assets/images/img1.png", "name": "Your Story"},
    {"img": "assets/images/img2.png", "name": "karennne"},
    {"img": "assets/images/img3.png", "name": "zackjohn"},
    {"img": "assets/images/img4.png", "name": "kieron_d"},
    {"img": "assets/images/img5.png", "name": "craig_love"},
    {"img": "assets/images/img6.png", "name": "ally"},
    {"img": "assets/images/img7.png", "name": "zimii"},
    {"img": "assets/images/img8.png", "name": "sihal"},
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.black12,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            "assets/images/Camera Icon.svg",
            width: 15,
            height: 15,
          ),
        ),
        title: SvgPicture.asset("assets/images/Instagram Logo1.svg"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/images/IGTV.svg"),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessageScreen()),
              );
            },
            icon: SvgPicture.asset("assets/images/Messanger.svg"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(
                            arrContent[index]["img"].toString(),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          arrContent[index]["name"].toString(),
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: arrContent.length,
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              color: Colors.black12,
              child: ListTile(
                leading: ClipOval(child: Image.asset("assets/images/img2.png")),
                title: Text("joshua_l"),
                subtitle: Text("Tokyo, Japan"),
                trailing: SvgPicture.asset("assets/images/More Icon.svg"),
              ),
            ),
            //UiHelper.CustomImage3(imgUrl: "img8.png"),
            Container(
              width: double.infinity,
              height: 375,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Rectangle (1).png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 15),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 10),
                  SvgPicture.asset("assets/images/like.svg"),
                  SizedBox(width: 20),
                  SvgPicture.asset("assets/images/Messanger.svg"),
                  SizedBox(width: 20),
                  SvgPicture.asset("assets/images/comment.svg"),
                  SizedBox(width: 260),
                  SvgPicture.asset("assets/images/Save.svg"),
                ],
              ),
            ),

            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 10),
                Image.asset("assets/images/Oval.png"),
                SizedBox(width: 5),
                Text(
                  "Liked by craig_love and 44,686 others",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "joshua_l The game in Japan was amazing and I want to \n share some photos",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFF9F9F9),
                  ),
                ),
              ],
            ),

            ///////////
            Container(
              width: double.infinity,
              height: 70,
              color: Colors.black12,
              child: ListTile(
                leading: ClipOval(child: Image.asset("assets/images/img3.png")),
                title: Text("joshua_l"),
                subtitle: Text("Tokyo, Japan"),
                trailing: SvgPicture.asset("assets/images/More Icon.svg"),
              ),
            ),
            //UiHelper.CustomImage3(imgUrl: "img8.png"),
            Container(
              width: double.infinity,
              height: 375,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Rectangle (1).png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 15),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 10),
                  SvgPicture.asset("assets/images/like.svg"),
                  SizedBox(width: 20),
                  SvgPicture.asset("assets/images/Messanger.svg"),
                  SizedBox(width: 20),
                  SvgPicture.asset("assets/images/comment.svg"),
                  SizedBox(width: 260),
                  SvgPicture.asset("assets/images/Save.svg"),
                ],
              ),
            ),

            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 10),
                Image.asset("assets/images/Oval.png"),
                SizedBox(width: 5),
                Text(
                  "Liked by craig_love and 44,686 others",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "joshua_l The game in Japan was amazing and I want to \n share some photos",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFF9F9F9),
                  ),
                ),
              ],
            ),

            Container(
              width: double.infinity,
              height: 70,
              color: Colors.black12,
              child: ListTile(
                leading: ClipOval(child: Image.asset("assets/images/img2.png")),
                title: Text("joshua_l"),
                subtitle: Text("Tokyo, Japan"),
                trailing: SvgPicture.asset("assets/images/More Icon.svg"),
              ),
            ),
            //UiHelper.CustomImage3(imgUrl: "img8.png"),
            Container(
              width: double.infinity,
              height: 375,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Rectangle (1).png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 15),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 10),
                  SvgPicture.asset("assets/images/like.svg"),
                  SizedBox(width: 20),
                  SvgPicture.asset("assets/images/Messanger.svg"),
                  SizedBox(width: 20),
                  SvgPicture.asset("assets/images/comment.svg"),
                  SizedBox(width: 260),
                  SvgPicture.asset("assets/images/Save.svg"),
                ],
              ),
            ),

            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 10),
                Image.asset("assets/images/Oval.png"),
                SizedBox(width: 5),
                Text(
                  "Liked by craig_love and 44,686 others",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "joshua_l The game in Japan was amazing and I want to \n share some photos",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFF9F9F9),
                  ),
                ),
              ],
            ),

            Container(
              width: double.infinity,
              height: 70,
              color: Colors.black12,
              child: ListTile(
                leading: ClipOval(child: Image.asset("assets/images/img2.png")),
                title: Text("joshua_l"),
                subtitle: Text("Tokyo, Japan"),
                trailing: SvgPicture.asset("assets/images/More Icon.svg"),
              ),
            ),
            //UiHelper.CustomImage3(imgUrl: "img8.png"),
            Container(
              width: double.infinity,
              height: 375,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Rectangle (1).png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 15),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 10),
                  SvgPicture.asset("assets/images/like.svg"),
                  SizedBox(width: 20),
                  SvgPicture.asset("assets/images/Messanger.svg"),
                  SizedBox(width: 20),
                  SvgPicture.asset("assets/images/comment.svg"),
                  SizedBox(width: 260),
                  SvgPicture.asset("assets/images/Save.svg"),
                ],
              ),
            ),

            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 10),
                Image.asset("assets/images/Oval.png"),
                SizedBox(width: 5),
                Text(
                  "Liked by craig_love and 44,686 others",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "joshua_l The game in Japan was amazing and I want to \n share some photos",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFF9F9F9),
                  ),
                ),
              ],
            ),

            Container(
              width: double.infinity,
              height: 70,
              color: Colors.black12,
              child: ListTile(
                leading: ClipOval(child: Image.asset("assets/images/img2.png")),
                title: Text("joshua_l"),
                subtitle: Text("Tokyo, Japan"),
                trailing: SvgPicture.asset("assets/images/More Icon.svg"),
              ),
            ),
            //UiHelper.CustomImage3(imgUrl: "img8.png"),
            Container(
              width: double.infinity,
              height: 375,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Rectangle (1).png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 15),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 10),
                  SvgPicture.asset("assets/images/like.svg"),
                  SizedBox(width: 20),
                  SvgPicture.asset("assets/images/Messanger.svg"),
                  SizedBox(width: 20),
                  SvgPicture.asset("assets/images/comment.svg"),
                  SizedBox(width: 260),
                  SvgPicture.asset("assets/images/Save.svg"),
                ],
              ),
            ),

            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 10),
                Image.asset("assets/images/Oval.png"),
                SizedBox(width: 5),
                Text(
                  "Liked by craig_love and 44,686 others",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "joshua_l The game in Japan was amazing and I want to \n share some photos",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFF9F9F9),
                  ),
                ),
              ],
            ),

            Container(
              width: double.infinity,
              height: 70,
              color: Colors.black12,
              child: ListTile(
                leading: ClipOval(child: Image.asset("assets/images/img2.png")),
                title: Text("joshua_l"),
                subtitle: Text("Tokyo, Japan"),
                trailing: SvgPicture.asset("assets/images/More Icon.svg"),
              ),
            ),
            //UiHelper.CustomImage3(imgUrl: "img8.png"),
            Container(
              width: double.infinity,
              height: 375,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Rectangle (1).png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 15),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 10),
                  SvgPicture.asset("assets/images/like.svg"),
                  SizedBox(width: 20),
                  SvgPicture.asset("assets/images/Messanger.svg"),
                  SizedBox(width: 20),
                  SvgPicture.asset("assets/images/comment.svg"),
                  SizedBox(width: 260),
                  SvgPicture.asset("assets/images/Save.svg"),
                ],
              ),
            ),

            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 10),
                Image.asset("assets/images/Oval.png"),
                SizedBox(width: 5),
                Text(
                  "Liked by craig_love and 44,686 others",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "joshua_l The game in Japan was amazing and I want to \n share some photos",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFF9F9F9),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
