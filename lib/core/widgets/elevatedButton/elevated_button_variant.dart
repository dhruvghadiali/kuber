import 'package:flutter/material.dart';
import 'package:kuber/core/widgets/elevatedButton/elevated_button_size.dart';
import 'package:kuber/core/widgets/elevatedButton/elevated_button_widget.dart';

enum ButtonVariant { primary, secondary, success, warning, error, info }

// Extension for easy access
extension ElevatedButtonVariants on ElevatedButton {
  static Widget primary({
    Key? key,
    required VoidCallback? onPressed,
    required Widget child,
    ButtonSize size = ButtonSize.medium,
    bool isLoading = false,
    bool isFullWidth = false,
  }) {
    return ElevatedButtonWidget(
      key: key,
      onPressed: onPressed,
      variant: ButtonVariant.primary,
      size: size,
      isLoading: isLoading,
      isFullWidth: isFullWidth,
      child: child,
    );
  }

  static Widget success({
    Key? key,
    required VoidCallback? onPressed,
    required Widget child,
    ButtonSize size = ButtonSize.medium,
    bool isLoading = false,
    bool isFullWidth = false,
  }) {
    return ElevatedButtonWidget(
      key: key,
      onPressed: onPressed,
      variant: ButtonVariant.success,
      size: size,
      isLoading: isLoading,
      isFullWidth: isFullWidth,
      child: child,
    );
  }

  static Widget warning({
    Key? key,
    required VoidCallback? onPressed,
    required Widget child,
    ButtonSize size = ButtonSize.medium,
    bool isLoading = false,
    bool isFullWidth = false,
  }) {
    return ElevatedButtonWidget(
      key: key,
      onPressed: onPressed,
      variant: ButtonVariant.warning,
      size: size,
      isLoading: isLoading,
      isFullWidth: isFullWidth,
      child: child,
    );
  }

  static Widget error({
    Key? key,
    required VoidCallback? onPressed,
    required Widget child,
    ButtonSize size = ButtonSize.medium,
    bool isLoading = false,
    bool isFullWidth = false,
  }) {
    return ElevatedButtonWidget(
      key: key,
      onPressed: onPressed,
      variant: ButtonVariant.error,
      size: size,
      isLoading: isLoading,
      isFullWidth: isFullWidth,
      child: child,
    );
  }

  static Widget info({
    Key? key,
    required VoidCallback? onPressed,
    required Widget child,
    ButtonSize size = ButtonSize.medium,
    bool isLoading = false,
    bool isFullWidth = false,
  }) {
    return ElevatedButtonWidget(
      key: key,
      onPressed: onPressed,
      variant: ButtonVariant.info,
      size: size,
      isLoading: isLoading,
      isFullWidth: isFullWidth,
      child: child,
    );
  }

  static Widget secondary({
    Key? key,
    required VoidCallback? onPressed,
    required Widget child,
    ButtonSize size = ButtonSize.medium,
    bool isLoading = false,
    bool isFullWidth = false,
  }) {
    return ElevatedButtonWidget(
      key: key,
      onPressed: onPressed,
      variant: ButtonVariant.secondary,
      size: size,
      isLoading: isLoading,
      isFullWidth: isFullWidth,
      child: child,
    );
  }
}