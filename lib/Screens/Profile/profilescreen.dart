import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/Screens/Post/postscreen.dart';
import 'package:instagram_clone/Screens/Profile/tagsscreen.dart';

class Profilescreen extends StatelessWidget {
  Profilescreen({super.key});

  TextEditingController searchController = TextEditingController();

  var arrContent = [
    {"img": "assets/images/img1.png"},
    {"img": "assets/images/img2.png"},
    {"img": "assets/images/img3.png"},
    {"img": "assets/images/img1.png"},
    {"img": "assets/images/img2.png"},
    {"img": "assets/images/img3.png"},
  ];

  var arrContent2 = [
    {"img": "assets/images/img1.png", "name": "Your Story"},
    {"img": "assets/images/img2.png", "name": "New"},
    {"img": "assets/images/img3.png", "name": "Friends"},
    {"img": "assets/images/img4.png", "name": "Sport "},
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/images/Private Icon.svg"),
              SizedBox(width: 5),
              Text(
                "jacob_w",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/images/Shape3.svg"),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 15),

                    ClipOval(
                      child: Image.asset(
                        "assets/images/img1.png",
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),

                    SizedBox(width: 30),
                    Row(
                      children: [
                        Text(
                          "    40 \n Posts",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0XFFF9F9F9),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "   1254 \n Followers",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0XFFF9F9F9),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "     180 \n Following",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0XFFF9F9F9),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Jacob West",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0XFFF9F9F9),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Digital goodies designer @pixsellz",
                    style: TextStyle(fontSize: 16, color: Color(0XFFF9F9F9)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Everything is designed.",
                    style: TextStyle(fontSize: 16, color: Color(0XFFF9F9F9)),
                  ),
                ),

                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  height: 35,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(0Xff000000),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0XFFF9F9F9),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(
                                arrContent2[index]["img"].toString(),
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              arrContent2[index]["name"].toString(),
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: arrContent2.length,
                  ),
                ),

                SizedBox(
                  height: 50,
                  child: AppBar(
                    bottom: TabBar(
                      indicatorColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Tab(
                          icon: SvgPicture.asset(
                            "assets/images/Grid Icon.svg",
                            width: 32,
                            height: 35,
                          ),
                        ),
                        Tab(
                          icon: SvgPicture.asset(
                            "assets/images/Tags Icon.svg",
                            width: 38,
                            height: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 500, // or MediaQuery height or any suitable value
                  child: TabBarView(
                    children: [
                      Postscreen(),
                      Tagsscreen(),
                    ],
                  ),
                ),


                /*    Row(
                children: [
                  SizedBox(width: 100),
                  SvgPicture.asset(
                    "assets/images/Grid Icon.svg",
                    width: 32,
                    height: 35,
                  ),
                  SizedBox(width: 120),
                  SvgPicture.asset(
                    "assets/images/Tags Icon.svg",
                    width: 38,
                    height: 35,
                  ),
                ],
              ),*/

              ],
            ),
          ),
        ),
      ),
    );
  }
}
