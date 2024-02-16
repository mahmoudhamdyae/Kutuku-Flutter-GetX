import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kutuku/core/constants/routes_manager.dart';
import 'package:kutuku/onboarding/controller/onboarding_controller.dart';
import 'package:kutuku/onboarding/data/on_boarding_model.dart';
import 'package:kutuku/onboarding/widgets/onboarding_page_view.dart';

import '../widgets/onboarding_dots.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0, left: 12.0, top: 0.0),
              child: TextButton(
                onPressed: () {
                  Get.offAllNamed(AppRoute.login);
                },
                child: Text('skip'.tr),
              ),
            ),
            const Gap(12.0),
            const Expanded(
              flex: 4,
              child: OnboardingPageView(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const OnboardingDots(),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(right: 16.0, left: 16.0, bottom: 8.0),
                    width: double.infinity,
                    child: GetBuilder<OnboardingControllerImpl>(
                      builder: (OnboardingControllerImpl controller) {
                        return FilledButton(
                          onPressed: controller.next,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              controller.currentPage != OnBoardingModel.getItems().length - 1 ? 'next'.tr : 'get_started'.tr,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Gap(16.0),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
