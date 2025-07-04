import 'package:flutter/material.dart';

// Centralizes app theming
class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      textTheme: const TextTheme(
        titleMedium: TextStyle(
          fontFamily: 'SFProText',
          fontWeight: FontWeight.w600,
          fontSize: 17,
          height: 24 / 17,
          letterSpacing: -0.41,
          color: Color(0xFF17171A),
        ),
      ),
    );
  }
} 