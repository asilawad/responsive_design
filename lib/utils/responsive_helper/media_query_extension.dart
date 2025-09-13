import 'package:flutter/material.dart';

extension MediaQueryExt on BuildContext {
  Size get mediaQuerySize => MediaQuery.of(this).size;

  double get screenHeight => mediaQuerySize.height;
  double get screenWidth => mediaQuerySize.width;
// MediaQuery.of(context).size.height — MediaQuery.of(context).padding.top — kToolbarHeight
  EdgeInsets get mediaQueryPadding => MediaQuery.of(this).padding;

  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;

  double responsiveFontSize(double fontSize) {
    return MediaQuery.of(this).textScaler.scale(fontSize);
  }

  double get diviceShortestSide => mediaQuerySize.shortestSide;
}
