import 'package:arrowj/constants/image_strings.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:arrowj/features/authentication/screens/on_boarding_screen/on_boarding_screen.dart';

class FadeInAnimationController extends GetxController {
  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  Future<void> startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 2000));
    Get.offAll(() => OnBoardingScreen());
  }
}
