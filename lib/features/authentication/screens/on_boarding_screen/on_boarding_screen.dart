import 'package:arrowj/features/authentication/controllers/on_boarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controllers/splash_screen_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  final obController = OnBoardingController();
  final splashScreenController = SplashScreenController(); // Initialize the SplashScreenController

  @override
  Widget build(BuildContext context) {
    splashScreenController.startAnimation(); // Call the startAnimation() method
//well Sunday
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obController.pages,
            liquidController: obController.controller,
            onPageChangeCallback: (pageIndex) {
              obController.onPageChangedCallback(pageIndex);
              obController.navigateToWelcomeScreen();
            },
          ),
          Positioned(
            bottom: 40.0,
            child: OutlinedButton(
              onPressed: () => obController.animatedToNextSlide(),
              style: ElevatedButton.styleFrom(
                side: BorderSide(color: Colors.black87),
                shape: CircleBorder(),
                padding: EdgeInsets.all(20),
                onPrimary: Colors.white,
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xff272727),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            child: TextButton(
              onPressed: () => obController.skip(),
              child: const Text(
                "skip",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Obx(
                () => Positioned(
              child: AnimatedSmoothIndicator(
                count: obController.pages.length,
                activeIndex: obController.currentPage.value,
                effect: const WormEffect(
                  activeDotColor: Color(0xff272727),
                  dotHeight: 5.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
