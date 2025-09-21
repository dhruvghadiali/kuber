import 'package:flutter/material.dart';
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

  ButtonStyle _getButtonStyle(BuildContext context) {
    final colors = ElevatedButtonColors.getButtonColors(
      Theme.of(context).brightness,
      variant,
    );
    final sizes = ElevatedButtonSize.getButtonSizes(size);

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
                width: ElevatedButtonSize.getLoadingSize(size),
                height: ElevatedButtonSize.getLoadingSize(size),
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    ElevatedButtonColors.getLoadingColor(
                      Theme.of(context).brightness,
                      variant,
                    ),
                  ),
                ),
              )
            : child,
      ),
    );
  }
}
