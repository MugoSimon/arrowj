
import 'package:arrowj/features/authentication/screens/welcome/welcome.dart';
import 'package:get/get.dart';
import 'package:arrowj/features/authentication/screens/on_boarding_screen/on_boarding_screen.dart';

class FadeInAnimationController extends GetxController {
  static FadeInAnimationController get find => Get.find();

  RxBool animate = false.obs;

  Future AnimationIn() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 3000));
    animate.value = false;
    await Future.delayed(Duration(milliseconds: 2000));
    Get.offAll(() => WelcomeScreen());
  }

  Future AnimationOut() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
  }
}
