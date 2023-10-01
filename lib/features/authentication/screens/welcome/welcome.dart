import 'package:arrowj/constants/colors.dart';
import 'package:arrowj/constants/image_strings.dart';
import 'package:arrowj/constants/sizes.dart';
import 'package:arrowj/constants/text_strings.dart';
import 'package:arrowj/features/authentication/screens/login/login.dart';
import 'package:arrowj/features/authentication/screens/sign_up/signup_screen.dart';
import 'package:arrowj/features/others/fade_in_animation/animated_design.dart';
import 'package:arrowj/features/others/fade_in_animation/fade_in_animation_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../others/fade_in_animation/fade_in_animation_controller.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.AnimationOut();

    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDark = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? tSecondaryColor : tPrimaryColor,
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 1200,
            animate: TAnimatePosition(
              bottomAfterValue: 0,
              bottomBeforeValue: -100,
              leftBeforeValue: 0,
              leftAfterValue: 0,
              rightAfterValue: 0,
              rightBeforeValue: 0,
              topAfterValue: 0,
              topBeforeValue: 0,
            ),
            child: Container(
              padding: EdgeInsets.all(tDefaultSize),
              child: Column(
                children: <Widget>[
                  Hero(
                    tag: 'welcome-image-tag',
                    child: SizedBox(
                      //height: 260,
                      child: Image(
                        image: AssetImage(tWelcomeScreenImage),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Column(
                    children: [
                      Text(tWelcomeTitle,
                          style: Theme.of(context).textTheme.headline3),
                      SizedBox(height: 10.0),
                      Text(
                        tWelcomeSubTitle,
                        style: Theme.of(context).textTheme.headline2,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 60.0,
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () => Get.to(() => const LoginScreen()),
                            child: Text(
                              tLogin.toUpperCase(),
                            ),
                          ),
                        ),
                        SizedBox(width: 7.0),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () => Get.to(() => const SignUpScreen()),
                            child: Text(
                              tSignUp.toUpperCase(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
