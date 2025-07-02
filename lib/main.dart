import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/theme/app_theme.dart';
import 'config/repository_switch.dart';
import 'presentation/bloc/crypto_bloc.dart';
import 'presentation/bloc/crypto_event.dart';
import 'presentation/pages/crypto_list_page.dart';

void main() {
  runApp(const MyCryptoApp());
}

// Root widget for the app, sets up BLoC and theme
class MyCryptoApp extends StatelessWidget {
  const MyCryptoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: BlocProvider(
        create: (_) => CryptoBloc(getRepository())..add(const CryptoEvent.load()),
        child: CryptoListPage(),
      ),
    );
  }
}
