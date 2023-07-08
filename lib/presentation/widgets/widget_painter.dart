import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
//TODO Implement paint
    Paint paint = Paint();
    paint.style = PaintingStyle.fill;
    paint.color = const Color.fromRGBO(91, 7, 227, 1.0);

    Path path = Path();
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
//TODO Implement shouldRepaint
    return true;
  }
}