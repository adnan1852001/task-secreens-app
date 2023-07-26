import 'package:flutter/cupertino.dart';

import '../styles/colors.dart';

class MyPainter extends CustomPainter {
  final double radius;
  final Color  _startColor;
  final Color  _endColor;
  MyPainter(this.radius ,this._startColor,this._endColor);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader =  LinearGradient(
          colors: [_startColor, _endColor],
          begin: Alignment.topCenter,
          end: Alignment.bottomRight)
          .createShader(Rect.fromCircle(
        center: Offset(0, 0),
        radius: radius,
      ));

    canvas.drawCircle(Offset.zero, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}