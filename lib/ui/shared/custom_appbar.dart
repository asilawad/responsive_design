import 'package:flutter/material.dart';
import 'package:responsive_example/ui/shared/custom_logo.dart';
import 'package:responsive_example/ui/shared/responsive_text.dart';
import 'package:responsive_example/utils/constants/color_manager.dart';
import 'package:responsive_example/utils/constants/values_manager.dart';
import 'package:responsive_example/utils/responsive_helper/media_query_extension.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p24),
      height: kToolbarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () {},
                child: ResponsiveText(
                    text: "Home",
                    style: TextStyle(fontWeight: FontWeight.w100),
                    minFontSize: context.screenWidth * .002,
                    maxFontSize: context.screenWidth * .003),
              ),
              SizedBox(width: AppWidth.w8),
              TextButton(
                onPressed: () {},
                child: ResponsiveText(
                    text: "Services",
                    style: TextStyle(fontWeight: FontWeight.w100),
                    minFontSize: context.screenWidth * .002,
                    maxFontSize: context.screenWidth * .003),
              ),
              SizedBox(width: AppWidth.w8),
              TextButton(
                onPressed: () {},
                child: ResponsiveText(
                    text: "Our Project",
                    style: TextStyle(fontWeight: FontWeight.w100),
                    minFontSize: context.screenWidth * .002,
                    maxFontSize: context.screenWidth * .003),
              ),
              SizedBox(width: AppWidth.w8),
              TextButton(
                onPressed: () {},
                child: ResponsiveText(
                    text: "About Us",
                    style: TextStyle(fontWeight: FontWeight.w100),
                    minFontSize: context.screenWidth * .002,
                    maxFontSize: context.screenWidth * .003),
              ),
            ],
          ),
          FittedBox(
            child: ElevatedButton(
              onPressed: () {},
              child: ResponsiveText(
                  text: "Contact Us",
                  style: TextStyle(fontWeight: FontWeight.w100),
                  minFontSize: context.screenWidth * .003,
                  maxFontSize: context.screenWidth * .005),
              style: ElevatedButton.styleFrom(
                  primary: ColorManager.transparent,
                  side: BorderSide(
                    color: ColorManager.white,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
