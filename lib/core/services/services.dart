import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppServices extends GetxService {

  late SharedPreferences _sharedPreferences;
  SharedPreferences get sharedPreferences => _sharedPreferences;

  Future<AppServices> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

Future<void> initServices() async {
  await Get.putAsync(() => AppServices().init());
}