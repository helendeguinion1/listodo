import 'package:flutter/material.dart';

class ListodoText extends StatelessWidget {
  const ListodoText(
      {super.key,
      required this.text,
      this.fontWeight = FontWeight.normal,
      this.textColor = Colors.black,
      this.textAlign = TextAlign.start,
      this.fontSize = 12});

  final String text;
  final FontWeight fontWeight;
  final Color textColor;
  final TextAlign textAlign;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: textColor, fontWeight: fontWeight, fontSize: fontSize),
    );
  }
}
