import 'package:flutter/material.dart';
// utils
import 'package:listodo/utils/sizes_util.dart';
import 'package:listodo/utils/colors_util.dart';
// widgets
import 'package:listodo/widgets/listodo_text.dart';
import 'package:listodo/widgets/listodo_text.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: screenHeight(context),
        color: color('black'),
        child: Column(children: [
          ListodoText(
            text: 'Signup',
            textColor: color('white'),
            fontWeight: FontWeight.w800,
          ),
          Container(
            height: screenHeight(context) * .50,
            color: Colors.transparent,
            child: Column(
              children: [],
            ),
          )
        ]),
      ),
    );
  }
}
