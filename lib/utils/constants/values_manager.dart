import 'package:flutter/cupertino.dart';
import 'package:responsive_example/utils/responsive_helper/media_query_extension.dart';
import 'package:responsive_example/utils/routes/router.dart';

final BuildContext _context = AppRouter.navigatorKey.currentContext!;

class AppMargin {
  static const double m13 = 13.0;
}

class AppPadding {
  static final double p24 =
      _context.screenWidth * .034 + _context.mediaQueryPadding.left;
}

class AppSize {
  static const double s44 = 44.0;
  static const double s16 = 16.0;
  static const double s0 = 0.0;
}

class AppWidth {
  static final double screenWidth = _context.screenWidth;
  static final double w1200 = _context.screenWidth * 3.2;
  static final double w625 = _context.screenWidth * 1.4;
  static final double w800 = _context.screenWidth * 2.13;
  static final double w381 = _context.screenWidth * .6;
  static final double w83 = _context.screenWidth * .022;
  static final double w78 = _context.screenWidth * .2;
  static final double w24 = _context.screenWidth * .064;
  static final double w10 = _context.screenWidth * .026;
  static final double w8 = _context.screenWidth * .021;
  static const double w130 = 130;
}

class AppHieght {
  static final double screenHeight = _context.screenHeight;
  static final double h451 = _context.screenHeight * .45;
  static final double h120 = _context.screenHeight * .12;
  static final double h712 = _context.screenHeight * 1.79;
  static final double h80 = _context.screenHeight * .08;
  static final double h66 = _context.screenHeight * .066;
  static final double h50 = _context.screenHeight * .05;
  static final double h30 = _context.screenHeight * .03;
  static final double h22 = _context.screenHeight * .022;
}

class AppFontSize {
  static final double s44 = _context.screenWidth * .044;
  static final double s20 = _context.screenWidth * .02;
  static final double s18 = _context.screenWidth * .018;
  static final double s16 = _context.screenWidth * .016;
  static final double s13 = _context.screenWidth * .013;
  static final double s12 = _context.screenWidth * .012;
  static final double s8 = _context.screenWidth * .008;
  static final double s5 = _context.screenWidth * .005;
  static final double s3 = _context.screenWidth * .003;

  static final double s2 = _context.screenWidth * .023;
}

class ScreenSize {
  static const double mobilePortrait = 350.0;
  static const double mobileLandscape = 640.0;
  static const double tabletPortrait = 600.0;
  static const double tabletLandscape = 960.0;
  static const double web = 1200.0;
}
