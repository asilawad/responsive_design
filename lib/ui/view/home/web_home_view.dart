import 'package:flutter/material.dart';
import 'package:responsive_example/ui/shared/body_custom.dart';
import 'package:responsive_example/ui/shared/reponsive_image.dart';
import '../../../utils/constants/color_manager.dart';
import '../../../utils/constants/values_manager.dart';
import '../../shared/custom_appbar.dart';

class WebHomeView extends StatelessWidget {
  const WebHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.bockgroundColor,
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity,kToolbarHeight),
           child: CustomAppBar()),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppWidth.w24,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: AppHieght.h30,
            ),
            Row(
              children: [
                const Expanded(child: BodyCustom()),
                Expanded(
                    child: CustomImage(
                        imagePath: 'assets/1.png',
                        width: AppWidth.w625,
                        height: AppHieght.h712))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
