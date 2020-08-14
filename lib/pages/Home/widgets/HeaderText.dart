import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String text;
  final String fontFamily;
  final double fontSize;
  final Color fontColor;

  const HeaderText({
    Key key,
    this.text,
    this.fontFamily,
    this.fontSize,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: fontColor,
        fontFamily: fontFamily,
        fontSize: fontSize,
      ),
    );
  }
}
