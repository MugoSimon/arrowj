import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../constants/image_strings.dart';
import '../../authentication/controllers/splash_screen_controller.dart';

class TFadeInAnimation extends StatelessWidget {
  const TFadeInAnimation({
    super.key,
    required this.splashScreenController,
    required this.durationInMs;
  });

  final SplashScreenController splashScreenController;
  final int durationInMs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: splashScreenController.animate.value ? 0 : -30,
        left: splashScreenController.animate.value ? 0 : -30,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationInMs),
          opacity: splashScreenController.animate.value ? 1 :0,
          child: Image(
            image: AssetImage(tSplashTopIcon),
            width: 120,
            height: 120,
          ),
        ),
      ),
    );
  }
}
