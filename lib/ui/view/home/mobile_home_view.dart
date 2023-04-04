import 'package:flutter/material.dart';
import 'package:responsive_example/ui/shared/body_custom.dart';
import 'package:responsive_example/ui/shared/reponsive_image.dart';
import 'package:responsive_example/utils/responsive_helper/media_query_extension.dart';
import '../../../utils/constants/color_manager.dart';
import '../../../utils/constants/font_manager.dart';
import '../../../utils/constants/values_manager.dart';
import '../../shared/custom_logo.dart';
import '../../shared/responsive_elevated_button.dart';
import '../../shared/responsive_text.dart';

class MobileHomeView extends StatelessWidget {
  const MobileHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.bockgroundColor,
      appBar: AppBar(
        backgroundColor: ColorManager.bockgroundColor,
        toolbarHeight: 100,
        elevation: AppSize.s0,
        leading: Padding(
          padding: EdgeInsets.only(
            left: AppPadding.p24,
          ),
          child: const CustomLogo(),
        ),
        leadingWidth: AppWidth.w130,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_rounded,
              size: context.screenWidth * .06,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p24,
        ),
        child: ListView(
          children: [
            const BodyCustom(),
            CustomImage(
                imagePath: 'assets/1.png',
                width: AppWidth.w381,
                height: AppHieght.h451)
          ],
        ),
      ),
    );
  }
}
