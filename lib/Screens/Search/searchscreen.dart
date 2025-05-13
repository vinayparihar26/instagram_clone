import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/Widgets/uihelper.dart';
import 'package:instagram_clone/responsive.dart';

class Searchscreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  var arrContent = [
    {"img": "assets/images/s1.png"},
    {"img": "assets/images/s2.png"},
    {"img": "assets/images/s3.png"},
    {"img": "assets/images/s4.png"},
    {"img": "assets/images/s5.png"},
    {"img": "assets/images/s6.png"},
    {"img": "assets/images/s7.png"},
    {"img": "assets/images/s8.png"},
    {"img": "assets/images/s1.png"},
    {"img": "assets/images/s2.png"},
    {"img": "assets/images/s3.png"},
    {"img": "assets/images/s4.png"},
    {"img": "assets/images/s5.png"},
    {"img": "assets/images/s6.png"},
    {"img": "assets/images/s7.png"},
    {"img": "assets/images/s8.png"},
  ];

  Searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Row(
            children: [
              SizedBox(width: 7),
              Container(
                height: 36,
                width: 363 * getResponsive(context),

                decoration: BoxDecoration(
                  color: Color(0XFF262626),
                  borderRadius: BorderRadius.circular(7),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0XFF8E8E93),
                        fontWeight: FontWeight.normal,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15),
              Icon(
                CupertinoIcons.slider_horizontal_3,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
          SizedBox(height: 5),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 8),
                Container(
                  height: 32,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white24),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/Icon.svg",
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(width: 0.02 * getWidth(context)),
                      Text(
                        "IGTV",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0XFFF9F9F9),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 7),

                Container(
                  height: 32,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white24),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/Shape.svg",
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(width: 0.02 * getWidth(context)),
                      Text(
                        "Shop",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0XFFF9F9F9),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 7),
                Container(
                  height: 32,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white24),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 0.01 * getWidth(context)),
                      Text(
                        "Style",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0XFFF9F9F9),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 7),
                Container(
                  height: 32,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white24),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 0.01 * getWidth(context)),
                      Text(
                        "Sports",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0XFFF9F9F9),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 7),
                Container(
                  height: 32,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white24),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 0.01 * getWidth(context)),
                      Text(
                        "Auto",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0XFFF9F9F9),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return Container(
                  clipBehavior: Clip.antiAlias,
                  height: 124,
                  width: 124,
                  decoration: BoxDecoration(),
                  child: Image.asset(
                    arrContent[index]["img"].toString(),
                    fit: BoxFit.cover,
                  ),
                );
              },
              itemCount: arrContent.length,
            ),
          ),
        ],
      ),
    );
  }
}
