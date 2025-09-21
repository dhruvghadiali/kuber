import 'package:flutter/material.dart';
import 'package:kuber/core/theme/app_colors.dart';
import 'package:kuber/core/widgets/elevatedButton/elevated_button_variant.dart';

class ElevatedButtonColors {
  final Color backgroundColor;
  final Color foregroundColor;
  final Color disabledBackgroundColor;
  final Color disabledForegroundColor;
  final Color shadowColor;

  const ElevatedButtonColors({
    required this.backgroundColor,
    required this.foregroundColor,
    required this.disabledBackgroundColor,
    required this.disabledForegroundColor,
    required this.shadowColor,
  });

  static Color getLoadingColor(Brightness brightness, ButtonVariant variant) {
    switch (variant) {
      case ButtonVariant.primary:
        return AppColors.primary;
      case ButtonVariant.secondary:
      case ButtonVariant.success:
      case ButtonVariant.warning:
      case ButtonVariant.error:
      case ButtonVariant.info:
        return AppColors.white;
    }
  }

  static ElevatedButtonColors getButtonColors(
    Brightness brightness,
    ButtonVariant variant,
  ) {
    switch (variant) {
      case ButtonVariant.primary:
        return ElevatedButtonColors(
          backgroundColor: brightness == Brightness.dark
              ? AppColors.primaryDark
              : AppColors.primaryLight,
          foregroundColor: AppColors.white,
          disabledBackgroundColor: AppColors.getOutline(brightness),
          disabledForegroundColor: AppColors.getOnSurface(brightness),
          shadowColor: AppColors.primary,
        );

      case ButtonVariant.secondary:
        return ElevatedButtonColors(
          backgroundColor: AppColors.secondary,
          foregroundColor: AppColors.white,
          disabledBackgroundColor: AppColors.getOutline(brightness),
          disabledForegroundColor: AppColors.getOnSurface(brightness),
          shadowColor: AppColors.secondary,
        );

      case ButtonVariant.success:
        return ElevatedButtonColors(
          backgroundColor: AppColors.success,
          foregroundColor: AppColors.white,
          disabledBackgroundColor: AppColors.getOutline(brightness),
          disabledForegroundColor: AppColors.getOnSurface(brightness),
          shadowColor: AppColors.success,
        );

      case ButtonVariant.warning:
        return ElevatedButtonColors(
          backgroundColor: AppColors.warning,
          foregroundColor: AppColors.white,
          disabledBackgroundColor: AppColors.getOutline(brightness),
          disabledForegroundColor: AppColors.getOnSurface(brightness),
          shadowColor: AppColors.warning,
        );

      case ButtonVariant.error:
        return ElevatedButtonColors(
          backgroundColor: AppColors.error,
          foregroundColor: AppColors.white,
          disabledBackgroundColor: AppColors.getOutline(brightness),
          disabledForegroundColor: AppColors.getOnSurface(brightness),
          shadowColor: AppColors.error,
        );

      case ButtonVariant.info:
        return ElevatedButtonColors(
          backgroundColor: AppColors.info,
          foregroundColor: AppColors.white,
          disabledBackgroundColor: AppColors.getOutline(brightness),
          disabledForegroundColor: AppColors.getOnSurface(brightness),
          shadowColor: AppColors.info,
        );
    }
  }
}
