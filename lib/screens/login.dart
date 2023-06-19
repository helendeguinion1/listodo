import 'package:flutter/material.dart';
// util
import 'package:listodo/utils/sizes_util.dart';
import 'package:listodo/widgets/listodo_button.dart';
// widget
import 'package:listodo/widgets/listodo_text.dart';
import 'package:listodo/widgets/listodo_text_form_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        height: screenHeight(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListodoText(
              text: 'listodo',
              textColor: Color.fromRGBO(255, 87, 87, 1),
              fontWeight: FontWeight.w900,
              fontSize: width(context, 30),
            ),
            SizedBox(
              height: height(context, 15),
            ),
            const ListodoTextFormField(
              label: 'Email',
              contentPadding: EdgeInsets.all(15),
            ),
            SizedBox(
              height: height(context, 15),
            ),
            const ListodoTextFormField(
              label: 'Password',
              obscureText: true,
              contentPadding: EdgeInsets.all(15),
            ),
            SizedBox(
              height: height(context, 15),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: width(context, 20)),
              width: double.infinity,
              child: ListodoElevateTextButton(onpressed: () {}, text: 'Login'),
            )
          ],
        ),
      ),
    );
  }
}
