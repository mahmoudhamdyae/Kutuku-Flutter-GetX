import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:kutuku/onboarding/controller/onboarding_controller.dart';
import 'package:kutuku/onboarding/widgets/onboarding_item.dart';

import '../data/on_boarding_model.dart';

class OnboardingPageView extends GetView<OnboardingControllerImpl> {
  const OnboardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (int index) {
        controller.onPageChanged(index);
      },
      itemCount: OnBoardingModel.getItems().length,
      itemBuilder: (BuildContext context, int index) {
        return OnboardingItem(onBoardingModel: OnBoardingModel.getItems()[index]);
      },
    );
  }
}
