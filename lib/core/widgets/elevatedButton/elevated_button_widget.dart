import 'package:flutter/material.dart';
import 'package:kuber/core/theme/app_colors.dart';
import 'package:kuber/core/widgets/elevatedButton/elevated_button_size.dart';
import 'package:kuber/core/widgets/elevatedButton/elevated_button_colors.dart';
import 'package:kuber/core/widgets/elevatedButton/elevated_button_variant.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    required this.onPressed,
    required this.child,
    this.variant = ButtonVariant.primary,
    this.size = ButtonSize.medium,
    this.isLoading = false,
    this.isFullWidth = false,
  });

  final VoidCallback? onPressed;
  final Widget child;
  final ButtonVariant variant;
  final ButtonSize size;
  final bool isLoading;
  final bool isFullWidth;

  ElevatedButtonColors _getButtonColors(BuildContext context) {
    final brightness = Theme.of(context).brightness;

    switch (variant) {
      case ButtonVariant.primary:
        return ElevatedButtonColors(
          backgroundColor: brightness == Brightness.dark
              ? AppColors.primaryDark
              : AppColors.primaryLight,
          foregroundColor: AppColors.white,
          disabledBackgroundColor: AppColors.getOutline(
            brightness,
          ).withOpacity(0.3),
          disabledForegroundColor: AppColors.getOnSurface(
            brightness,
          ).withOpacity(0.6),
          shadowColor: AppColors.primary.withOpacity(0.3),
        );

      case ButtonVariant.secondary:
        return ElevatedButtonColors(
          backgroundColor: AppColors.secondary,
          foregroundColor: AppColors.white,
          disabledBackgroundColor: AppColors.getOutline(
            brightness,
          ).withOpacity(0.3),
          disabledForegroundColor: AppColors.getOnSurface(
            brightness,
          ).withOpacity(0.6),
          shadowColor: AppColors.secondary.withOpacity(0.3),
        );

      case ButtonVariant.success:
        return ElevatedButtonColors(
          backgroundColor: AppColors.success,
          foregroundColor: AppColors.white,
          disabledBackgroundColor: AppColors.getOutline(
            brightness,
          ).withOpacity(0.3),
          disabledForegroundColor: AppColors.getOnSurface(
            brightness,
          ).withOpacity(0.6),
          shadowColor: AppColors.success.withOpacity(0.3),
        );

      case ButtonVariant.warning:
        return ElevatedButtonColors(
          backgroundColor: AppColors.warning,
          foregroundColor: AppColors.white,
          disabledBackgroundColor: AppColors.getOutline(
            brightness,
          ).withOpacity(0.3),
          disabledForegroundColor: AppColors.getOnSurface(
            brightness,
          ).withOpacity(0.6),
          shadowColor: AppColors.warning.withOpacity(0.3),
        );

      case ButtonVariant.error:
        return ElevatedButtonColors(
          backgroundColor: AppColors.error,
          foregroundColor: AppColors.white,
          disabledBackgroundColor: AppColors.getOutline(
            brightness,
          ).withOpacity(0.3),
          disabledForegroundColor: AppColors.getOnSurface(
            brightness,
          ).withOpacity(0.6),
          shadowColor: AppColors.error.withOpacity(0.3),
        );

      case ButtonVariant.info:
        return ElevatedButtonColors(
          backgroundColor: AppColors.info,
          foregroundColor: AppColors.white,
          disabledBackgroundColor: AppColors.getOutline(
            brightness,
          ).withOpacity(0.3),
          disabledForegroundColor: AppColors.getOnSurface(
            brightness,
          ).withOpacity(0.6),
          shadowColor: AppColors.info.withOpacity(0.3),
        );
    }
  }

  ElevatedButtonSize _getButtonSizes() {
    switch (size) {
      case ButtonSize.small:
        return ElevatedButtonSize(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          minimumSize: const Size(64, 32),
          textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        );

      case ButtonSize.medium:
        return ElevatedButtonSize(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          minimumSize: const Size(88, 44),
          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        );

      case ButtonSize.large:
        return ElevatedButtonSize(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          minimumSize: const Size(112, 56),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        );
    }
  }

  ButtonStyle _getButtonStyle(BuildContext context) {
    final colors = _getButtonColors(context);
    final sizes = _getButtonSizes();

    return ElevatedButton.styleFrom(
      backgroundColor: colors.backgroundColor,
      foregroundColor: colors.foregroundColor,
      disabledBackgroundColor: colors.disabledBackgroundColor,
      disabledForegroundColor: colors.disabledForegroundColor,
      elevation: 2,
      shadowColor: colors.shadowColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: sizes.padding,
      minimumSize: sizes.minimumSize,
      textStyle: sizes.textStyle,
    );
  }

  double _getLoadingSize() {
    switch (size) {
      case ButtonSize.small:
        return 12;
      case ButtonSize.medium:
        return 16;
      case ButtonSize.large:
        return 20;
    }
  }

  Color _getLoadingColor(BuildContext context) {
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

  @override
  Widget build(BuildContext context) {
    final buttonStyle = _getButtonStyle(context);

    return SizedBox(
      width: isFullWidth ? double.infinity : null,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: buttonStyle,
        child: isLoading
            ? SizedBox(
                width: _getLoadingSize(),
                height: _getLoadingSize(),
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    _getLoadingColor(context),
                  ),
                ),
              )
            : child,
      ),
    );
  }
}
