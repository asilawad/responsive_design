import 'package:flutter/material.dart';
import 'package:responsive_example/utils/responsive_helper/media_query_extension.dart';

// class ResponsiveText extends StatelessWidget {
//   final String text;
//   final TextStyle style;
//   final double minFontSize;
//   final double maxFontSize;

//   const ResponsiveText({
//     Key? key,
//     required this.text,
//     required this.style,
//     required this.minFontSize,
//     required this.maxFontSize,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final double blockSizeVertical = AppHieght.screenHeight / 100;
//     final double blockSizeHorizontal = AppWidth.screenWidth / 100;
//     final double textScaleFactor = context.textScaleFactor;

//     double fontSize = maxFontSize;
//     if (blockSizeHorizontal * minFontSize * textScaleFactor > fontSize) {
//       fontSize = blockSizeHorizontal * minFontSize * textScaleFactor;
//     }
//     if (blockSizeVertical * minFontSize * textScaleFactor > fontSize) {
//       fontSize = blockSizeVertical * minFontSize * textScaleFactor;
//     }
//     if (blockSizeHorizontal * maxFontSize * textScaleFactor < fontSize) {
//       fontSize = blockSizeHorizontal * maxFontSize * textScaleFactor;
//     }
//     if (blockSizeVertical * maxFontSize * textScaleFactor < fontSize) {
//       fontSize = blockSizeVertical * maxFontSize * textScaleFactor;
//     }
//     return Text(
//       text,
//       style: style.copyWith(fontSize: fontSize, color: ColorManager.white),
//     );
//   }
// }

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  const CustomText(
      {Key? key,
      required this.text,
      required this.fontSize,
      this.color = Colors.white,
      this.fontWeight = FontWeight.bold})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 
        context.responsiveFontSize(context.screenWidth * 0.002 * fontSize),
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
