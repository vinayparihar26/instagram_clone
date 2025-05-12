import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/Heart/heartscreen.dart';
import 'package:instagram_clone/Screens/Post/postscreen.dart';
import 'package:instagram_clone/Screens/Profile/profilescreen.dart';
import 'package:instagram_clone/Screens/Search/searchscreen.dart';
import 'package:instagram_clone/Screens/home/homescreen.dart';
import 'package:instagram_clone/Widgets/uihelper.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    Searchscreen(),
    Postscreen(),
    Heartscreen(),
    Profilescreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon:Icon(CupertinoIcons.plus_app),
            label: "Post",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            label: "Heart",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: "Profile",
          ),
        ],
      ),
      body: IndexedStack(index: currentIndex, children: pages),
    );
  }
}
