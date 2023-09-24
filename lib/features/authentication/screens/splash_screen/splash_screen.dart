import 'package:arrowj/constants/colors.dart';
import 'package:arrowj/constants/image_strings.dart';
import 'package:arrowj/constants/sizes.dart';
import 'package:arrowj/constants/text_strings.dart';
import 'package:arrowj/features/authentication/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashScreenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashScreenController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashScreenController.animate.value ? 0 : -30,
              left: splashScreenController.animate.value ? 0 : -30,
              child: Image(
                image: AssetImage(tSplashTopIcon),
                width: 120,
                height: 120,
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              top: 120,
              left: splashScreenController.animate.value ? tDefaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashScreenController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tAppName,
                        style: Theme.of(context).textTheme.headline5),
                    Text(tAppTagLine,
                        style: Theme.of(context).textTheme.headlineSmall),
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 2400),
              bottom: splashScreenController.animate.value ? 60 : 0,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 2000),
                opacity: splashScreenController.animate.value ? 1 : 0,
                child: Image(
                  image: AssetImage(tSplashTopImage),
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 2400),
              bottom: splashScreenController.animate.value ? 60 : 0,
              right: tDefaultSize,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 2000),
                opacity: splashScreenController.animate.value ? 1 : 0,
                child: Container(
                  width: tSplashContainerSize,
                  height: tSplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: tPrimaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
