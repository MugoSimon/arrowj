import 'package:arrowj/constants/image_strings.dart';
import 'package:arrowj/features/authentication/models/model_on_boarding.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_strings.dart';
import '../screens/on_boarding_screen/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: tOnBoardingImage1,
        title: tOnBoardingTitle1,
        subtitle: tOnBoardingSubTitle1,
        counterText: tOnBoardingCounter1,
        bgColor: tOnBoardingPage1Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: tOnBoardingImage2,
        title: tOnBoardingTitle2,
        subtitle: tOnBoardingSubTitle2,
        counterText: tOnBoardingCounter2,
        bgColor: tOnBoardingPage2Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: tOnBoardingImage3,
        title: tOnBoardingTitle3,
        subtitle: tOnBoardingSubTitle3,
        counterText: tOnBoardingCounter3,
        bgColor: tOnBoardingPage1Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: tOnBoardingImage4,
        title: tOnBoardingTitle4,
        subtitle: tOnBoardingSubTitle4,
        counterText: tOnBoardingCounter4,
        bgColor: tOnBoardingPage4Color,
      ),
    )
  ];

  onPageChangedCallback(int activePageIndex) => currentPage.value = activePageIndex;
  skip() => controller.jumpToPage(page: 3);
  animatedToNextSlide(){
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  // Add this method to navigate to the welcome screen when the last onboarding page is reached.
  void navigateToWelcomeScreen() {
    if (currentPage.value == pages.length - 1) {
      Get.offNamed('/welcome');
    }
  }
}
