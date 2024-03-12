import 'package:dalel_app/core/utils/app_assets.dart';

class OnBoarding {
  final String title;
  final String subTitle;
  final String image;
  OnBoarding(
      {required this.image, required this.title, required this.subTitle});
}

List<OnBoarding> onBoarding = [
  OnBoarding(
      image: Assets.resourceImagesOnboarding1,
      title: 'Explore The history with\nDalel in a smart way',
      subTitle:
          'Using our app’s history libraries/nyou can find many historical periods '),
           OnBoarding(
      image: Assets.resourceImagesOnboarding1,
      title: 'From every place\non earth',
      subTitle:
          'A big variety of ancient places\nfrom all over the world'), OnBoarding(
      image: Assets.resourceImagesOnboarding1,
      title: 'Using modern AI technology\nfor better user experience',
      subTitle:
          'AI provide recommendations and helps\nyou to continue the search journey'),
];
