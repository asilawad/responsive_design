import 'package:flutter/material.dart';
import 'package:responsive_example/ui/shared/responsive_text.dart';
import 'package:responsive_example/utils/responsive_helper/media_query_extension.dart';
import '../../utils/constants/color_manager.dart';

class ResponsiveElevatedButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final double iconSize;
  final double fontSize;

  const ResponsiveElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.iconSize,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton.icon(
          onPressed: onPressed,
          icon: Image.asset(
            'assets/arrow_icon.png',
            width: iconSize,
            height: iconSize,
          ),
          label: Padding(
            padding: EdgeInsets.symmetric(vertical: context.screenHeight* 0.001),
            child: CustomText(
              text: text,
              fontSize: fontSize,
              fontWeight: FontWeight.w500,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorManager.purple,
            padding: EdgeInsets.symmetric(
              horizontal: context.screenWidth * 0.05,
              vertical: context.screenHeight * 0.015,
            ),
            minimumSize:
                Size(context.screenWidth * .1, context.screenHeight * .01),
          ),
        )
      ],
    );
  }
}
