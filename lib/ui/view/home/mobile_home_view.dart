import 'package:flutter/material.dart';
import 'package:responsive_example/ui/shared/body_custom.dart';
import 'package:responsive_example/ui/shared/reponsive_image.dart';
import 'package:responsive_example/utils/responsive_helper/media_query_extension.dart';
import '../../../utils/constants/color_manager.dart';
import '../../../utils/constants/values_manager.dart';
import '../../shared/custom_logo.dart';

class MobileHomeView extends StatelessWidget {
  const MobileHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.bockgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: ColorManager.bockgroundColor,
            pinned: true,
            floating: true,
            expandedHeight: 100,
            elevation: AppSize.s0,
            leading: Padding(
              padding: EdgeInsets.only(left: AppPadding.p24),
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
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.p24),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const BodyCustom(),
                  CustomImage(
                    imagePath: 'assets/1.png',
                    width: AppWidth.w381,
                    height: AppHieght.h451,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
