import 'package:flutter/material.dart';
import 'package:listodo/utils/sizes_util.dart';

class ListodoTextFormField extends StatelessWidget {
  const ListodoTextFormField(
      {super.key,
      this.controller,
      this.focusNode,
      this.placeholder,
      this.onChanged,
      this.prefix,
      this.suffix,
      this.validator,
      this.initialValue,
      this.obscureText = false,
      this.label,
      this.maxLength = 100,
      this.onSave,
      this.icon,
      this.keyboardType = TextInputType.text,
      this.inputAction = TextInputAction.next,
      this.contentPadding =
          const EdgeInsets.only(top: 10, bottom: 0, left: 0, right: 0),
      this.isEnabled = true});

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? placeholder;
  final Function(String)? onChanged;
  final Widget? prefix;
  final Widget? suffix;
  final Function(String?)? validator;
  final String? initialValue;
  final bool obscureText;
  final Function(String)? onSave;
  final String? label;
  final int maxLength;
  final EdgeInsets contentPadding;
  final Widget? icon;
  final TextInputType keyboardType;
  final TextInputAction inputAction;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    final Brightness platformBrightness =
        WidgetsBinding.instance.window.platformBrightness;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width(context, 20)),
      child: TextFormField(
        enabled: isEnabled,
        style: TextStyle(
            fontSize: height(context, 15),
            color: platformBrightness == Brightness.dark
                ? Colors.white
                : Colors.black87),
        textInputAction: inputAction,
        maxLength: maxLength,
        obscureText: obscureText,
        initialValue: initialValue,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            labelStyle: TextStyle(
                color: platformBrightness == Brightness.dark
                    ? const Color.fromARGB(255, 224, 209, 209)
                    : Colors.black87),
            fillColor: platformBrightness == Brightness.dark
                ? const Color.fromARGB(255, 22, 21, 21)
                : Colors.transparent,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 65, 65, 66),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 65, 65, 66),
                width: 2.0,
              ),
            ),
            filled: true,
            icon: icon,
            counterText: "",
            errorMaxLines: 2,
            isDense: true,
            contentPadding: contentPadding,
            label: Text(label!),
            prefix: prefix,
            suffix: suffix),
        controller: controller,
        focusNode: focusNode,
        onChanged: (String val) => onChanged!(val),
        validator: (String? val) => validator!(val),
        onSaved: (String? val) => onSave!(val!),
      ),
    );
  }
}
