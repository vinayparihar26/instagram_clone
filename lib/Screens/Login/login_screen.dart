import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/SignUp/signupscreen.dart';
import 'package:instagram_clone/Screens/bottomnav/bottomnav.dart';
import 'package:instagram_clone/Widgets/uihelper.dart';
import 'package:instagram_clone/responsive.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgUrl: "Instagram Logo.png"),
            // 0. * getHeight();
            UiHelper.CustomTextField(
              controller: emailController,
              hintText: "Email",
              toHide: false,
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 0.015 * getHeight(context)),
            UiHelper.CustomTextField(
              controller: passwordController,
              hintText: "Password",
              toHide: true,
              textInputType: TextInputType.visiblePassword,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: 0.20 * getResponsive(context),
                  ),
                  child: UiHelper.CustomTextButton(
                    text: 'Forgot password?',
                    callback: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 0.010 * getHeight(context)),
            UiHelper.CustomeButton(
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavScreen()),
                );
              },
              btnName: "Login",
            ),
            SizedBox(height: 0.010 * getHeight(context)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomImage2(imgUrl: "fb.png"),

                UiHelper.CustomTextButton(
                  callback: () {},
                  text: "Login with facebook",
                ),
              ],
            ),

            Text(
              "OR",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
                UiHelper.CustomTextButton2(
                  callback: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Signupscreen()),
                    );
                  },
                  text: "Sign Up",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
