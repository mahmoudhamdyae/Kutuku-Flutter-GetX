import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'color_manager.dart';
import 'color_schemes.g.dart';

ThemeData getLightApplicationTheme() {
  return ThemeData(
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 4.0,
    ),
    colorScheme: lightColorScheme,
    textTheme: const TextTheme(),
    fontFamily: 'PlayfairDisplay',
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.primary
    )
  );
}

ThemeData getDarkApplicationTheme() {
  return ThemeData(
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 4.0,
      ),
      colorScheme: darkColorScheme,
      textTheme: const TextTheme(),
      fontFamily: 'PlayfairDisplay',
      buttonTheme: const ButtonThemeData(
          textTheme: ButtonTextTheme.primary
      )
  );
}
