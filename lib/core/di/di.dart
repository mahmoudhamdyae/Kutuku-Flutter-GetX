import 'package:get/get.dart';
import 'package:kutuku/onboarding/controller/onboarding_controller.dart';

class GetXDi implements Bindings {

  @override
  Future<void> dependencies() async {
    // Controllers
    Get.lazyPut<OnboardingControllerImpl>(() => OnboardingControllerImpl(), fenix: true);
  }
}