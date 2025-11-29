import 'package:client_app_mobile/config/theme/color_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get light => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorTheme.primarySeed,
          error: ColorTheme.error,
        ),
        useMaterial3: true,
      );
}
