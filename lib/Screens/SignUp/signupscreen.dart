import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/Login/login_screen.dart';
import 'package:instagram_clone/Widgets/uihelper.dart';
import 'package:instagram_clone/responsive.dart';

class Signupscreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgUrl: "Instagram Logo.png"),
            UiHelper.CustomTextField(
              controller: emailController,
              hintText: "Email",
              toHide: false,
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 0.010 * getHeight(context)),
            UiHelper.CustomTextField(
              controller: passwordController,
              hintText: "Password",
              toHide: true,
              textInputType: TextInputType.text,
            ),
            SizedBox(height: 0.010 * getHeight(context)),
            UiHelper.CustomTextField(
              controller: userNameController,
              hintText: "User Name",
              toHide: false,
              textInputType: TextInputType.name,
            ),
            SizedBox(height: 0.020 * getHeight(context)),

            UiHelper.CustomeButton(callback: () {}, btnName: "Sign Up"),
            SizedBox(height: 0.010 * getHeight(context)),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),

                UiHelper.CustomTextButton2(
                  callback: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  text: "Sign In",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
