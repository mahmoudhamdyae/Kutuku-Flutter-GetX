import 'package:flutter/material.dart';

import 'color_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primaryColor: ColorManager.primary,
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: 4.0,
        shadowColor: ColorManager.primary,
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: ColorManager.primary),
    textTheme: const TextTheme(),
    fontFamily: 'PlayfairDisplay',
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.primary
    )
  );
}
