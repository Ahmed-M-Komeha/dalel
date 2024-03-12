
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndictor extends StatelessWidget {
  const CustomSmoothPageIndictor({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
        controller: controller, // PageController
        count: 3,
        effect: ExpandingDotsEffect(
            dotWidth: 10,
            dotHeight: 7,
            activeDotColor: AppColors.deepBrown), // your preferred effect
        onDotClicked: (index) {});
  }
}
