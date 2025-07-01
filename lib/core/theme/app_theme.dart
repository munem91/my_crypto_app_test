import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      textTheme: const TextTheme(
        titleMedium: TextStyle(
          fontFamily: 'SFProDisplay',
          fontSize: 17,
          fontWeight: FontWeight.w600,
          height: 24 / 17,
          letterSpacing: -0.41,
          color: Color(0xFF17171A),
        ),
      ),
    );
  }
} 