import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:dalel_app/features/onboarding/data/models/on_boarding_model.dart';

import 'package:dalel_app/features/onboarding/presentation/views/widgets/custom_page_indictor.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  OnBoardingBody({super.key});
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 600,
        child: PageView.builder(
          controller: _controller,
          itemCount: onBoarding.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: 343,
                  height: 290,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(onBoarding[index].image))),
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomSmoothPageIndictor(controller: _controller),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  onBoarding[index].title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.poppins500style24
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  onBoarding[index].subTitle,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.poppins300style16,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
