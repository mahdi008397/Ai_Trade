import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // path.moveTo(0, 0);
    // path.lineTo(30, 100);
    // path.lineTo(size.width - 30, 100);
    // path.lineTo(size.width, 0);
    // path.lineTo(0, 0);

    // path.moveTo(0, 20); // A

    // path.lineTo(30, 100 - 20); // B

    // path.quadraticBezierTo(40, 100, 60, 100); // C And D

    // path.lineTo(size.width - 50, 100); // E

    // path.quadraticBezierTo(
    //     size.width - 40, 100, size.width - 30, 100 - 10); // F and G

    // path.lineTo(size.width, 20); // H

    // path.quadraticBezierTo(size.width + 20, -20, size.width - 40, 0); // I and J

    path.cubicTo(-0.162656, 5.25445, 3.56081, 0.25, 8.75224, 0.25);
    path.lineTo(357.248, 0.25);
    path.cubicTo(362.439, 0.25, 366.163, 5.25445, 364.671, 10.2269);
    path.lineTo(339.471, 94.2269);
    path.cubicTo(338.487, 97.5051, 335.47, 99.75, 332.048, 99.75);
    path.lineTo(33.9522, 99.75);
    path.cubicTo(30.5298, 99.75, 27.5125, 97.5051, 26.5291, 94.2269);
    path.lineTo(1.32909, 10.2269);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
