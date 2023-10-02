import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.imageHeight = 0.2,
    this.imageColor,
    this.heightBetween,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.textAlign,
  }) : super(key: key);

  final String image, title, subTitle;
  final double? imageHeight;
  final Color? imageColor;
  final double? heightBetween;
  final TextAlign? textAlign;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Hero(
          tag: 'welcome-image-tag',
          child: Image(
            image: AssetImage(image),
            height: size.height * 0.3,
          ),
        ),
        Text(title, style: Theme.of(context).textTheme.headline1),
        Text(subTitle,textAlign: textAlign, style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
