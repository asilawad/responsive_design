import 'package:flutter/material.dart';

class ResponsiveImage extends StatelessWidget {
  final String imagePath;
  final double aspectRatio;
  final double width;

  const ResponsiveImage(
      {Key? key,
      required this.imagePath,
      required this.aspectRatio,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        width: width,
      ),
    );
  }
}
