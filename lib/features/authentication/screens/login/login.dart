import 'package:arrowj/constants/image_strings.dart';
import 'package:arrowj/constants/sizes.dart';
import 'package:arrowj/constants/text_strings.dart';
import 'package:flutter/material.dart';

import 'login_footer_widget.dart';
import 'login_form_widget.dart';
import 'login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginHeaderWidget(size: size),
                const LoginForm(),
                const login_footer_widget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
