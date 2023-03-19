import 'package:flutter/material.dart';
import '../../ui/view/home/home_view.dart';
import 'routes_constants.dart';

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.homeRoute:
        return MaterialPageRoute(builder: (context) => const HomeView());
      default:
        return MaterialPageRoute(builder: (context) => const HomeView());
    }
  }
}
