import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:kutuku/core/constants/routes_manager.dart';
import 'package:kutuku/onboarding/data/on_boarding_model.dart';

abstract class OnboardingController extends GetxController {
  void next();
  onPageChanged(int index);
}

class OnboardingControllerImpl extends OnboardingController {

  int currentPage = 0;
  late PageController pageController;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void next() {
    currentPage++;

    if (currentPage > OnBoardingModel.getItems().length - 1) {
      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 900),
        curve: Curves.ease,
      );
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }
}