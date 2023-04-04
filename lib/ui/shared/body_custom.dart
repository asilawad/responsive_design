import 'package:flutter/material.dart';
import 'package:responsive_example/ui/shared/responsive_elevated_button.dart';
import 'package:responsive_example/ui/shared/responsive_text.dart';
import 'package:responsive_example/utils/responsive_helper/media_query_extension.dart';

import '../../utils/constants/font_manager.dart';
import '../../utils/constants/values_manager.dart';

class BodyCustom extends StatelessWidget {
  const BodyCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
      shrinkWrap: true,
      children: [
        SizedBox(
          height: AppHieght.h30,
        ),
        const CustomText(
          text: 'Build Your Awesome Platform',
          fontSize: AppFontSize.s42,
        ),
        SizedBox(
          height: AppHieght.h30,
        ),
        const CustomText(
          text:
              "Enver studio is a digital studio that offers several services such as UI/UX Design to developers, we will provide the best service for those of you who use our services.",
          fontSize: AppFontSize.s16,
          fontWeight: FontWeight.w100,
        ),
        SizedBox(
          height: AppHieght.h50,
        ),
        ResponsiveElevatedButton(
          text: "Our Services",
          onPressed: () {},
          iconSize: context.screenWidth * .024,
          fontSize: AppFontSize.s13,
        ),
        SizedBox(
          height: AppHieght.h50,
        ),
      ],
    );
  }
}
