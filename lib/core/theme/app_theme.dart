import 'package:flutter/material.dart';
import 'color_scheme.dart';

class AppTheme {
  static ThemeData light() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColorScheme.primary,
        background: AppColorScheme.background,
      ),
    );
  }
}
