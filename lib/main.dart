import 'package:flutter/material.dart';

import 'Screens/SignUp/signupscreen.dart';
import 'Screens/Splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Signupscreen(),
    );
  }
}

