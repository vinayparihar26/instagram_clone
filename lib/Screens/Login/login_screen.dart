import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/SignUp/signupscreen.dart';
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
            Text(
              'Instagram',
              style: TextStyle(
                fontSize: 26 * getResponsive(context),
                color: Colors.white,
              ),
            ),
            Image.asset("assets/images/Instagram Logo.png"),
            // 0. * getHeight();
            SizedBox(height: 0.020 * getHeight(context)),
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
            UiHelper.CustomeButton(callback: () {}, btnName: "Login In"),
            SizedBox(height: 0.010 * getHeight(context)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomImage(imgUrl: "fb.png"),
                UiHelper.CustomTextButton(
                  callback: () {},
                  text: "Login with facebook",
                ),
              ],
            ),
            SizedBox(height: 0.010 * getHeight(context)),

            Text(
              "OR",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),

            SizedBox(height: 0.010 * getHeight(context)),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                UiHelper.CustomTextButton(
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
