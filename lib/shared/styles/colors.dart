import 'package:flutter/material.dart';

Color basicColor = const Color(0xff0f3c47);
Color secondaryColor = const Color(0xfff89600);
Color colorStartScreen = const Color(0xffd3b8a5);
Color greyColor = Colors.grey.shade200;
Color darkGreyColor = Color(0xff696969);
Color whiteColor = Colors.white;

const Color startColor = Color(0xff0f3c47);
const Color endColor = Color(0xff55767c);

const Gradient gradient = LinearGradient(
  colors: [startColor, endColor],
  end: Alignment.bottomCenter,
  begin: Alignment.topCenter,
  transform: GradientRotation(3.14/4)
  
);
