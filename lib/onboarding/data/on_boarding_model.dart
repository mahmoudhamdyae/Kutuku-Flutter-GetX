import 'package:get/get.dart';
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
        title: 'on_boarding_1_title'.tr,
        image: OnboardingImageAsset.onBoardingImageOne,
        body: 'on_boarding_1_desc'.tr
      ),
      OnBoardingModel._(
          title: 'on_boarding_2_title'.tr,
          image: OnboardingImageAsset.onBoardingImageTwo,
          body: 'on_boarding_2_desc'.tr
      ),
      OnBoardingModel._(
          title: 'on_boarding_3_title'.tr,
          image: OnboardingImageAsset.onBoardingImageThree,
          body: 'on_boarding_3_desc'.tr
      ),
    ];
  }
}