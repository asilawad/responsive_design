import 'package:flutter/material.dart';
import 'package:responsive_example/ui/shared/reponsive_image.dart';
import 'package:responsive_example/ui/shared/responsive_text.dart';
import 'package:responsive_example/utils/constants/color_manager.dart';
import 'package:responsive_example/utils/constants/font_manager.dart';
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
          Row(
            children: [
              CustomImage(
                imagePath: "assets/logo.png",
                width: context.screenWidth * .07,
                height: context.screenWidth * .07,
              ),
             
              CustomText(
                text: "Enver",
                fontSize: AppFontSize.s13,
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () {},
                child: CustomText(
                    text: "Home",
                    fontWeight: FontWeight.w100,
                    fontSize: AppFontSize.s8),
              ),
              SizedBox(width: AppWidth.w8),
              TextButton(
                onPressed: () {},
                child: CustomText(
                    text: "Services",
                    fontWeight: FontWeight.w100,
                    fontSize: AppFontSize.s8),
              ),
              SizedBox(width: AppWidth.w8),
              TextButton(
                onPressed: () {},
                child: CustomText(
                    text: "Our Project",
                    fontWeight: FontWeight.w100,
                    fontSize: AppFontSize.s8),
              ),
              SizedBox(width: AppWidth.w8),
              TextButton(
                onPressed: () {},
                child: CustomText(
                    text: "About Us",
                    fontWeight: FontWeight.w100,
                    fontSize: AppFontSize.s8),
              ),
            ],
          ),
          FittedBox(
            child: ElevatedButton(
              onPressed: () {},
              child: CustomText(
                  text: "Contact Us",
                  fontWeight: FontWeight.w100,
                  fontSize: AppFontSize.s8),
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
