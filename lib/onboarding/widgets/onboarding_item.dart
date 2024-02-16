import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kutuku/core/constants/color_manager.dart';
import 'package:kutuku/onboarding/controller/onboarding_controller.dart';

import '../data/on_boarding_model.dart';

class OnboardingItem extends StatelessWidget {

  final OnBoardingModel onBoardingModel;
  const OnboardingItem({super.key, required this.onBoardingModel});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImpl());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.asset(
                  onBoardingModel.image!,
                  fit: BoxFit.fitHeight,
                ),
          )),
          const Gap(16.0),
          Text(
            onBoardingModel.title!,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          const Gap(8.0),
          Text(
            onBoardingModel.body!,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: ColorManager.lightGrey
            ),
            textAlign: TextAlign.center,
          ),
          const Gap(32.0),
        ],
      ),
    );
  }
}
