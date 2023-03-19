import 'package:flutter/material.dart';
import 'package:responsive_example/ui/view/home/web_home_view.dart';
import 'package:responsive_example/utils/responsive_helper/responsive_ui.dart';
import 'mobile_home_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return const ResponsiveUI(
      mobileWidget: MobileHomeView(),
      webSiteWidget: WebHomeView(),
    );
  }
}
