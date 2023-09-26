import 'package:arrowj/features/authentication/controllers/on_boarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  final obController = OnBoardingController();

  @override
  Widget build(BuildContext context) {
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
            top: 20.0,
            right: 20.0,
            child: TextButton(
              onPressed: () => obController.skip(),
              child: const Text(
                "skip",
                style: TextStyle(color: Colors.green),
              ),
            ),
          ),
          Obx(
                () => Positioned(
              bottom: 20.0,
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
