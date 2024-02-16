import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kutuku/core/localization/changelocal.dart';
import 'package:kutuku/core/localization/translation.dart';
import 'package:kutuku/routes.dart';
import 'package:kutuku/onboarding/screens/onboarding_screen.dart';

import 'core/constants/theme_manager.dart';
import 'core/di/di.dart';
import 'core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      home: const OnboardingScreen(),
      routes: routes,
      translations: AppTranslation(),
      locale: controller.language,
      initialBinding: GetXDi(),
    );
  }
}