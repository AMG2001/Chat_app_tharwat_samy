import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  Color? color = Colors.black;
  double? fontSize = 16;
  String? fontFamily;

  CustomText({required this.text, this.color, this.fontSize, this.fontFamily});

  @override
  Widget build(BuildContext context) {
    fontFamily == DefaultTextStyle.of(context).style.fontFamily;
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: fontSize, fontFamily: fontFamily),
    );
  }
}
