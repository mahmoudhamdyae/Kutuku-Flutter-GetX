import 'package:kutuku/onboarding/constants/onboarding_image_asset.dart';

class OnBoardingModel {
  final String? title;
  final String? image;
  final String? body;

  OnBoardingModel._({
    this.title,
    this.image,
    this.body
  });

  static List<OnBoardingModel> getItems() {
    return [
      OnBoardingModel._(
        title: 'Various Collection s Of The Latest Products',
        image: OnboardingImageAsset.onBoardingImageOne,
        body: 'Urna amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum.'
      ),
      OnBoardingModel._(
          title: 'Complete Collection Of Colors And Sizes',
          image: OnboardingImageAsset.onBoardingImageTwo,
          body: 'Urna amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum.'
      ),
      OnBoardingModel._(
          title: 'Find The Most Suitable Outfit For You',
          image: OnboardingImageAsset.onBoardingImageThree,
          body: 'Urna amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum.'
      ),
    ];
  }
}