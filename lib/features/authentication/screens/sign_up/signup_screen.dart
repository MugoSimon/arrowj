import 'package:arrowj/constants/image_strings.dart';
import 'package:arrowj/constants/sizes.dart';
import 'package:arrowj/constants/text_strings.dart';
import 'package:arrowj/features/authentication/screens/sign_up/widgets/signup_footer_widget.dart';
import 'package:arrowj/features/authentication/screens/sign_up/widgets/signup_form_widget.dart';
import 'package:arrowj/features/common_widgets/forms/form_header_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize - 10),
            child: const Column(
              children: [
                FormHeaderWidget(
                    image: tWelcomeScreenImage,
                    title: tSignUpTitle,
                    subTitle: tSignUpSubTitle),
                SignUpFormWidget(),
                SignupFooter_widget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}