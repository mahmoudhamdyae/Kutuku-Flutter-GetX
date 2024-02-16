import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kutuku/onboarding/controller/onboarding_controller.dart';

import '../../core/constants/color_manager.dart';
import '../constants/onboarding_constants.dart';
import '../data/on_boarding_model.dart';

class OnboardingDots extends StatelessWidget {
  const OnboardingDots({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImpl>(
      builder: (OnboardingControllerImpl controller) =>
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  OnBoardingModel.getItems().length, (index) =>
                  AnimatedContainer(
                    margin: const EdgeInsets.only(right: 5),
                    duration: const Duration(milliseconds: OnboardingConstants.onboardingDuration),
                    width: controller.currentPage == index ? 20 : 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
              ),
            ],
          ),
    );
  }
}
