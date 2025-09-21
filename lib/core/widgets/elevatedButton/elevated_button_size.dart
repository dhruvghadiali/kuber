import 'package:flutter/material.dart';

enum ButtonSize { small, medium, large }

class ElevatedButtonSize {
  final EdgeInsets padding;
  final Size minimumSize;
  final TextStyle textStyle;

  const ElevatedButtonSize({
    required this.padding,
    required this.minimumSize,
    required this.textStyle,
  });

   static ElevatedButtonSize getButtonSizes(ButtonSize size) {
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

  static double getLoadingSize(ButtonSize size) {
    switch (size) {
      case ButtonSize.small:
        return 12;
      case ButtonSize.medium:
        return 16;
      case ButtonSize.large:
        return 20;
    }
  }
}