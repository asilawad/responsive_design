import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;
  const CustomImage(
      {Key? key,
      required this.imagePath,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: width,
        child: AspectRatio(
          aspectRatio: 381 / 451,
          child: Image.asset(imagePath),
        ));

    // Image.asset(
    //   imagePath,
    //   width: width,
    //   height: height,
    //   fit: BoxFit.cover,
    // );
  }
}
