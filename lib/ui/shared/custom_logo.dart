import 'package:flutter/material.dart';
import 'package:responsive_example/utils/constants/color_manager.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset("assets/logo.png"),
          const Text(
            "Enver",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: ColorManager.white),
          ),
        ],
      ),
    );
  }
}
