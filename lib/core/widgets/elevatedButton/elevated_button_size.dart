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
}