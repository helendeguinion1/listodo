import 'package:flutter/widgets.dart';

screenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double safeAreaHeight(BuildContext context) {
  var vertical = MediaQuery.of(context).padding.top +
      MediaQuery.of(context).padding.bottom;

  return (screenHeight(context) - vertical) / 100;
}

double height(BuildContext context, double height) {
  return (safeAreaHeight(context) * height) / safeAreaHeight(context);
}

screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double safeAreaWidth(BuildContext context) {
  var horizontal = MediaQuery.of(context).padding.left +
      MediaQuery.of(context).padding.right;

  return (screenWidth(context) - horizontal) / 100;
}

double width(BuildContext context, double width) {
  return (safeAreaWidth(context) * width) / safeAreaWidth(context);
}
