import 'package:flutter/material.dart';

/// Color constants used throughout the application
class AppColors {
  // Prevent instantiation
  AppColors._();

  // Primary Colors
  static const Color primary = Color(0xFF6366F1); // Indigo
  static const Color primaryLight = Color(0xFF818CF8);
  static const Color primaryDark = Color(0xFF4338CA);

  // Secondary Colors
  static const Color secondary = Color(0xFF10B981); // Emerald
  static const Color secondaryLight = Color(0xFF34D399);
  static const Color secondaryDark = Color(0xFF059669);

  // Tertiary Colors
  static const Color tertiary = Color(0xFFF59E0B); // Amber
  static const Color tertiaryLight = Color(0xFFFBBF24);
  static const Color tertiaryDark = Color(0xFFD97706);

  // Neutral Colors - Light Mode
  static const Color backgroundLight = Color(0xFFFFFFFF);
  static const Color surfaceLight = Color(0xFFF9FAFB);
  static const Color surfaceVariantLight = Color(0xFFF3F4F6);
  static const Color outlineLight = Color(0xFFE5E7EB);

  // Text Colors - Light Mode
  static const Color onBackgroundLight = Color(0xFF111827);
  static const Color onSurfaceLight = Color(0xFF111827);
  static const Color onSurfaceVariantLight = Color(0xFF6B7280);

  // Neutral Colors - Dark Mode
  static const Color backgroundDark = Color(0xFF0F172A);
  static const Color surfaceDark = Color(0xFF1E293B);
  static const Color surfaceVariantDark = Color(0xFF334155);
  static const Color outlineDark = Color(0xFF475569);

  // Text Colors - Dark Mode
  static const Color onBackgroundDark = Color(0xFFF1F5F9);
  static const Color onSurfaceDark = Color(0xFFF1F5F9);
  static const Color onSurfaceVariantDark = Color(0xFFCBD5E1);

  // Status Colors
  static const Color success = Color(0xFF10B981);
  static const Color warning = Color(0xFFF59E0B);
  static const Color error = Color(0xFFEF4444);
  static const Color info = Color(0xFF3B82F6);

  // Status Container Colors
  static const Color successContainer = Color(0xFFECFDF5);
  static const Color warningContainer = Color(0xFFFEF3C7);
  static const Color errorContainer = Color(0xFFFEE2E2);
  static const Color infoContainer = Color(0xFFEBF8FF);

  // Status Container Colors - Dark
  static const Color successContainerDark = Color(0xFF064E3B);
  static const Color warningContainerDark = Color(0xFF78350F);
  static const Color errorContainerDark = Color(0xFF7F1D1D);
  static const Color infoContainerDark = Color(0xFF1E3A8A);

  // Common Colors
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color transparent = Colors.transparent;

  // Helper methods to get colors based on brightness
  static Color getBackground(Brightness brightness) {
    return brightness == Brightness.light ? backgroundLight : backgroundDark;
  }

  static Color getSurface(Brightness brightness) {
    return brightness == Brightness.light ? surfaceLight : surfaceDark;
  }

  static Color getOnSurface(Brightness brightness) {
    return brightness == Brightness.light ? onSurfaceLight : onSurfaceDark;
  }

  static Color getOutline(Brightness brightness) {
    return brightness == Brightness.light ? outlineLight : outlineDark;
  }
}