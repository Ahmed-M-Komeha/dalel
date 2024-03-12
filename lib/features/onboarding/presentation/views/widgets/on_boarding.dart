import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';

import 'package:dalel_app/features/onboarding/presentation/views/widgets/custom_page_indictor.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  OnBoardingBody({super.key});
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(Assets.resourceImagesOnboarding1),
              SizedBox(
                height: 24,
              ),
              CustomSmoothPageIndictor(controller: _controller),
              SizedBox(
                height: 32,
              ),
              Text(
                "Explore The history with\nDalel in a smart way",
                textAlign: TextAlign.center,
                style: CustomTextStyles.poppins500style24
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Using our app’s history libraries/nyou can find many historical periods ",
                textAlign: TextAlign.center,
                style: CustomTextStyles.poppins300style16,
              ),
            ],
          );
        },
      ),
    );
  }
}
