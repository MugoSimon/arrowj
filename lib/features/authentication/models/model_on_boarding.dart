import 'dart:ui';

class OnBoardingModel {
  final String image;
  final String title;
  final String subtitle;
  final String counterText;
  final Color bgColor;

  OnBoardingModel({
    required this.title,
    required this.subtitle,
    required this.counterText,
    required this.bgColor,
    required this.image,
  });
}
