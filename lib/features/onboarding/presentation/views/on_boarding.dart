
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/custom_nav_bar.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const CustomNavBar(),
              OnBoardingBody(),
              const CustomButton(text: 'Next'),
              const SizedBox(
                height: 17,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
