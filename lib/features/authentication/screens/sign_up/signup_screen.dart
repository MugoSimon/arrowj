import 'package:arrowj/constants/image_strings.dart';
import 'package:arrowj/constants/sizes.dart';
import 'package:arrowj/constants/text_strings.dart';
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
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                FormHeaderWidget(
                    image: tWelcomeScreenImage,
                    title: tSignUpTitle,
                    subTitle: tSignUpSubTitle),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: tFormHeight - 10.0),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
