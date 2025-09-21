import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppColorScheme {
  // Prevent instantiation
  AppColorScheme._();

  // Light Color Scheme
  static const ColorScheme lightColorScheme = ColorScheme.light(
    primary: AppColors.primary,
    primaryContainer: AppColors.primaryLight,
    secondary: AppColors.secondary,
    secondaryContainer: AppColors.secondaryLight,
    tertiary: AppColors.tertiary,
    tertiaryContainer: AppColors.tertiaryLight,
    surface: AppColors.surfaceLight,
    error: AppColors.error,
    onPrimary: AppColors.white,
    onSecondary: AppColors.white,
    onTertiary: AppColors.white,
    onSurface: AppColors.onSurfaceLight,
    onError: AppColors.white,
    outline: AppColors.outlineLight,
    surfaceContainerHigh: AppColors.surfaceVariantLight,
    onSurfaceVariant: AppColors.onSurfaceVariantLight,
    errorContainer: AppColors.errorContainer,
    onErrorContainer: AppColors.errorContainerDark,
  );

  // Dark Color Scheme
  static const ColorScheme darkColorScheme = ColorScheme.dark(
    primary: AppColors.primary,
    primaryContainer: AppColors.primaryDark,
    secondary: AppColors.secondary,
    secondaryContainer: AppColors.secondaryDark,
    tertiary: AppColors.tertiary,
    tertiaryContainer: AppColors.tertiaryDark,
    surface: AppColors.surfaceDark,
    error: AppColors.error,
    onPrimary: AppColors.white,
    onSecondary: AppColors.white,
    onTertiary: AppColors.white,
    onSurface: AppColors.onSurfaceDark,
    onError: AppColors.white,
    outline: AppColors.outlineDark,
    surfaceContainerHigh: AppColors.surfaceVariantDark,
    onSurfaceVariant: AppColors.onSurfaceVariantDark,
    errorContainer: AppColors.errorContainerDark,
    onErrorContainer: AppColors.errorContainer,
  );
}