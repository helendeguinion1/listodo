import 'package:flutter/material.dart';

color(String name) {
  switch (name) {
    case 'black':
      return const Color(0xff222222);
    case 'white':
      return Colors.white;
    case 'orange':
      return const Color(0xfffb5b32);
    case 'higlight':
      return const Color(0xffe3b5a9);
    case 'gray':
      return const Color(0xffd9d9d9);
    case 'success':
      return const Color(0xffbcecd0);
    case 'error':
      return const Color(0xffdd8e8f);
    case 'pink':
      return const Color(0xfff6ecf4);
    case 'disabled':
      return const Color(0xffe3e5ef);
    case 'ligt-orange':
      return const Color(0xfff9ede6);
    case 'light-green':
      return const Color(0xffebf5ed);
    case 'light-yellow':
      return const Color(0xfffbfae6);
  }
}
