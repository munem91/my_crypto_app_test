import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'presentation/pages/crypto_list_page.dart';

void main() {
  runApp(const MyCryptoApp());
}

class MyCryptoApp extends StatelessWidget {
  const MyCryptoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: CryptoListPage(),
    );
  }
}
