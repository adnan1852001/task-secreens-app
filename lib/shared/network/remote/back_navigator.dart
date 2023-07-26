// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void BackNavigator(
  context, {
  required Widget nextScreen,
}) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => nextScreen),
  );
}
void BackNavigatorAnimation(
    context, {
      required Widget nextScreen,
    }) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context){return nextScreen; }));
}
