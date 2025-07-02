import 'dart:math';
import 'package:flutter/material.dart';
import '../../data/repositories/mock_crypto_repository.dart';
import '../../domain/crypto_model.dart';
import '../widgets/crypto_list_item.dart';

class CryptoListPage extends StatelessWidget {
  final _repo = MockCryptoRepository();

  CryptoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: FutureBuilder<List<CryptoModel>>(
          future: _repo.fetchCryptoList(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError || snapshot.data == null) {
              return const Center(child: Text('Failed to load data'));
            }

            final data = snapshot.data!;

            return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: data.length,
              itemBuilder: (context, index) {
                final random = Random(index);
                final color = Color.fromRGBO(
                  random.nextInt(256),
                  random.nextInt(256),
                  random.nextInt(256),
                  0.1,
                );
                return CryptoListItem(data: data[index], color: color);
              },
            );
          },
        ),
      ),
    );
  }
}
