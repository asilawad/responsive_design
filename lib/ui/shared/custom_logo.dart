import 'package:flutter/material.dart';
import 'package:responsive_example/ui/shared/reponsive_image.dart';
import 'package:responsive_example/ui/shared/responsive_text.dart';
import 'package:responsive_example/utils/constants/values_manager.dart';
import 'package:responsive_example/utils/responsive_helper/media_query_extension.dart';
import '../../utils/constants/font_manager.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          CustomImage(
            imagePath: "assets/logo.png",
            width: context.screenWidth * .07,
            height: context.screenWidth * .07,
          ),
          SizedBox(
            width: AppWidth.w4,
          ),
          CustomText(
            text: "Enver",
            fontSize: AppFontSize.s28,
          ),
        ],
      ),
    );
  }
}
