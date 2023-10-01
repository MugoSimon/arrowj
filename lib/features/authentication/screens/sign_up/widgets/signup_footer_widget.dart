import 'package:flutter/material.dart';

import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class SignupFooter_widget extends StatelessWidget {
  const SignupFooter_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('OR'),
        const SizedBox(
          height: tFormHeight - 10.0,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: const Image(
                image: AssetImage(tGoogleLogoImage),
                width: 20.0,
              ),
              onPressed: () {},
              label: const Text(tSignInWithGoogle)),
        ),
        const SizedBox(height: tFormHeight + 10),
        TextButton(
          onPressed: () {},
          child: Text.rich(
            TextSpan(
                text: tAlreadyHaveAnAccount,
                style: Theme.of(context).textTheme.headline4,
                children: const [
                  TextSpan(text: tLogin, style: TextStyle(color: Colors.blue)),
                ]),
          ),
        ),
      ],
    );
  }
}
