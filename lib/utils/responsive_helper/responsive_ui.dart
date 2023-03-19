import 'package:flutter/material.dart';
import '../constants/values_manager.dart';

class ResponsiveUI extends StatelessWidget {
  const ResponsiveUI(
      {Key? key,
      required this.mobileWidget,
      this.tabletWidget,
      this.webSiteWidget})
      : super(key: key);
  final Widget mobileWidget;
  final Widget? webSiteWidget;
  final Widget? tabletWidget;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= ScreenSize.web) {
        return webSiteWidget ?? mobileWidget;
      } else if (constraints.maxWidth >= ScreenSize.tabletPortrait) {
        return webSiteWidget ?? mobileWidget;
      } else {
        return mobileWidget;
      }
    });
  }
}
