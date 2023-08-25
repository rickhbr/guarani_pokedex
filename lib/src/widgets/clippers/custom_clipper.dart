import 'package:flutter/material.dart';

class RampClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var roundessFactor = 50.0;
    var path = Path();

    path.moveTo(0, size.height * 0.25);
    path.lineTo(0, size.height - roundessFactor + 10);
    path.quadraticBezierTo(0, size.height, roundessFactor, size.height);
    path.lineTo(size.width - roundessFactor, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - roundessFactor);
    path.lineTo(size.width, roundessFactor * 2);
    path.quadraticBezierTo(size.width - 5, roundessFactor,
        size.width - roundessFactor * 1.5, roundessFactor * 1.4);
    path.lineTo(
        roundessFactor * 0.6, size.height * 0.25 - roundessFactor * 0.4);
    path.quadraticBezierTo(
        0, size.height * 0.25, 0, size.height * 0.25 + roundessFactor * 0.3);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
