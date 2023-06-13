import 'package:flutter/material.dart';
// util
import 'package:listodo/utils/colors_util.dart';
// widget
import 'package:listodo/widgets/listodo_text.dart';

class ListodoElevateTextButton extends StatelessWidget {
  const ListodoElevateTextButton(
      {super.key, required this.onpressed, required this.text});

  final Function onpressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => onpressed,
        style: ElevatedButton.styleFrom(backgroundColor: color('black')),
        child: ListodoText(
          text: text,
          fontWeight: FontWeight.w500,
          textColor: color('white'),
        ));
  }
}
