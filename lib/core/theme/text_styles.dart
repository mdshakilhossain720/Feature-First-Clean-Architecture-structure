import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme textTheme = const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: AppColors.gray900,
    ),
    headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppColors.gray900,
    ),
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.gray900,
    ),
    bodyLarge: TextStyle(fontSize: 16, color: AppColors.gray800),
    bodyMedium: TextStyle(fontSize: 14, color: AppColors.gray600),
    labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
  );
}
