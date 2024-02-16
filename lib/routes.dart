import 'package:flutter/cupertino.dart';
import 'package:kutuku/auth/screens/login_screen.dart';
import 'package:kutuku/core/constants/routes_manager.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const LoginScreen()
};