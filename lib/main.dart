import 'package:flutter/material.dart';
import 'package:responsive_example/utils/routes/route_generator.dart';
import 'package:responsive_example/utils/routes/router.dart';
import 'package:responsive_example/utils/routes/routes_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteConstants.homeRoute,
      onGenerateRoute: RouteGenerator.generateRoutes,
      navigatorKey: AppRouter.navigatorKey,
    );
  }
}
