import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/services.dart';

class LocaleController extends GetxController {

  Locale? _language;
  Locale? get language => _language;

  AppServices appServices = Get.find<AppServices>();

  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    appServices.sharedPreferences.setString("lang", langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    super.onInit();
    String? sharedPrefLang = appServices.sharedPreferences.getString('lang');
    if (sharedPrefLang == 'ar') {
      _language = const Locale('ar');
    } else if (sharedPrefLang == 'en') {
      _language = const Locale('ar');
    } else {
      _language = Locale(Get.deviceLocale!.languageCode);
    }
  }
}
