import 'package:flutter/material.dart';
import 'package:my_flutter_app/src/utils/app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        fontFamily: 'Urbanist',
        colorScheme: const ColorScheme.light(
          primary: AppColors.primary,
          primaryContainer: AppColors.primaryVariant,
          secondary: AppColors.secondary,
          surface: AppColors.surface,
          error: AppColors.error,
          onPrimary: AppColors.onPrimary,
          onSecondary: AppColors.onSecondary,
          onSurface: AppColors.onSurface,
          onError: AppColors.onError,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 84, fontWeight: FontWeight.w200),
          headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
          bodyMedium: TextStyle(fontSize: 16), //Texto normal
        ),
        buttonTheme: const ButtonThemeData(
            buttonColor: AppColors.secondary,
            textTheme: ButtonTextTheme.primary),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.onPrimary,
          ),
        ));
  }
}
