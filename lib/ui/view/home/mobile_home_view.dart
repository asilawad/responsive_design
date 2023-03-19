import 'package:flutter/material.dart';
import 'package:responsive_example/ui/shared/reponsive_image.dart';
import 'package:responsive_example/utils/responsive_helper/media_query_extension.dart';
import '../../../utils/constants/color_manager.dart';
import '../../../utils/constants/font_manager.dart';
import '../../../utils/constants/values_manager.dart';
import '../../shared/custom_logo.dart';
import '../../shared/responsive_text.dart';

class MobileHomeView extends StatelessWidget {
  const MobileHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.bockgroundColor,
      appBar: AppBar(
        backgroundColor: ColorManager.bockgroundColor,
        toolbarHeight: AppHieght.h120,
        elevation: AppSize.s0,
        leading: Padding(
          padding: EdgeInsets.only(
            left: AppPadding.p24,
          ),
          child: const CustomLogo(),
        ),
        leadingWidth: AppWidth.w130,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p24,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: AppHieght.h30,
            ),
            ResponsiveText(
              text: 'Build Your Awesome Platform',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              minFontSize: AppFontSize.s8,
              maxFontSize: AppFontSize.s18,
            ),
            SizedBox(
              height: AppHieght.h30,
            ),
            ResponsiveText(
                text:
                    "Enver studio is a digital studio that offers several services such as UI/UX Design to developers, we will provide the best service for those of you who use our services.",
                style: TextStyle(fontWeight: FontWeight.w100),
                minFontSize: AppFontSize.s2,
                maxFontSize: AppFontSize.s5),
            SizedBox(
              height: AppHieght.h50,
            ),
            Flex(direction: Axis.horizontal, children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: ColorManager.purple),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppWidth.w83, vertical: AppHieght.h22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ResponsiveText(
                            text: "Our Services",
                            style: TextStyle(fontWeight: FontWeight.w100),
                            minFontSize: context.screenWidth * .005,
                            maxFontSize: context.screenWidth * .008),
                        SizedBox(
                          width: AppWidth.w8,
                        ),
                        Icon(
                          Icons.ads_click_outlined,
                        )
                      ],
                    ),
                  )),
            ]),
            SizedBox(
              height: AppHieght.h50,
            ),
            ResponsiveImage(
              imagePath: 'assets/1.png',
              aspectRatio: AppWidth.w381 / AppHieght.h451,
              width: AppWidth.w381,
            )
          ],
        ),
      ),
    );
  }
}
