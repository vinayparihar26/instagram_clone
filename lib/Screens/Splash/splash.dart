import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/uihelper.dart';
import 'package:instagram_clone/responsive.dart';
import '../Login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgUrl: "instagram.png"),
            SizedBox(height: 0.20 * getHeight(context)),
            Text(
              'Instagram',
              style: TextStyle(
                fontSize: 0.24 * getResponsiveText(context),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
