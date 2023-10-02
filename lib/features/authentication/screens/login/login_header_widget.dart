import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Hero(
          tag: 'welcome-image-tag',
          child: Image(
            image: AssetImage(tWelcomeScreenImage),
          ),
        ),
        Text(tLoginTitle,
            style: Theme.of(context).textTheme.headline1),
        Text(
          tLoginSubTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
