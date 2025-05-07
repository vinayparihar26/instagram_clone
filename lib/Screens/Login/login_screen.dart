import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Instagram',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 20),
            UiHelper.CustomTextField(
              controller: emailController,
              hintText: "Email",
              toHide: false,
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 15),
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
                  padding: EdgeInsets.only(right: 20),
                  child: UiHelper.CustomeTextButton(
                    text: 'Forgot password?',
                    callback: () {},
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
