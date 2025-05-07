import 'package:flutter/material.dart';

class UiHelper {
  static CustomeTextButton({
    required String text,
    required VoidCallback callback,
  }) {
    return TextButton(
      onPressed: () {
        callback();
      },
      child: Text(
        text,
        style: TextStyle(color: Color(0XFF3797EF), fontSize: 12),
      ),
    );
  }

  static CustomTextButton({
    required VoidCallback callback,
    required String text,
  }) {
    return TextButton(
      onPressed: callback,
      child: Text(
        text,
        style: TextStyle(color: Color(0XFF3797EF), fontSize: 16),
      ),
    );
  }

  static CustomTextField({
    required TextEditingController controller,
    required String hintText,
    required bool toHide,
    required TextInputType textInputType,
  }) {
    return Container(
      height: 44,
      width: 343,
      decoration: BoxDecoration(
        color: Color(0XFF121212),
        border: Border.all(color: Colors.white24),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: controller,
          obscureText: toHide,
          keyboardType: textInputType,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Color(0XFFFFFFFF),
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  static CustomImage({required String imgUrl}) {
    return Image.asset("assets/images/$imgUrl", width: 90, height: 90);
  }
}
