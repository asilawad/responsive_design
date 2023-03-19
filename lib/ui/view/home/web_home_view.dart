import 'package:flutter/material.dart';
import 'package:responsive_example/ui/shared/custom_appbar.dart';
import 'package:responsive_example/ui/shared/reponsive_image.dart';
import 'package:responsive_example/utils/responsive_helper/media_query_extension.dart';
import '../../../utils/constants/color_manager.dart';
import '../../../utils/constants/font_manager.dart';
import '../../../utils/constants/values_manager.dart';
import '../../shared/responsive_text.dart';

class WebHomeView extends StatelessWidget {
  const WebHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.bockgroundColor,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppBar()),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppWidth.w24,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                    child: ListView(
                  shrinkWrap: true,
                  children: [
                    ResponsiveText(
                      text: 'Build Your Awesome Platform',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      maxFontSize: context.screenWidth * .088,
                      minFontSize: context.screenWidth * .0088,
                    ),
                    SizedBox(
                      height: AppHieght.h30,
                    ),
                    ResponsiveText(
                      maxFontSize: context.screenWidth * .005,
                      minFontSize: context.screenWidth * .002,
                      text:
                          "Enver studio is a digital studio that offers several services such as UI/UX Design to developers, we will provide the best service for those of you who use our services.",
                      style: TextStyle(fontWeight: FontWeight.w100),
                    ),
                    SizedBox(
                      height: AppHieght.h50,
                    ),
                    Flex(direction: Axis.horizontal, children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: ColorManager.purple),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: AppWidth.w83,
                                vertical: AppHieght.h22),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ResponsiveText(
                                    text: "Our Services",
                                    style: TextStyle(),
                                    minFontSize: context.screenWidth * .003,
                                    maxFontSize: context.screenWidth * .005),
                                SizedBox(
                                  width: AppWidth.w8,
                                ),
                                Icon(Icons.ads_click_outlined)
                              ],
                            ),
                          )),
                    ]),
                    SizedBox(
                      height: AppHieght.h50,
                    ),
                  ],
                )),
                Expanded(
                    child: ResponsiveImage(
                        imagePath: 'assets/1.png',
                        aspectRatio: AppWidth.w625 / AppHieght.h712,
                        width: AppWidth.w625)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
