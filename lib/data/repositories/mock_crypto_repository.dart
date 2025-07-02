import 'dart:convert';
import 'package:flutter/services.dart';
import '../../domain/crypto_model.dart';
import '../../domain/repositories/crypto_repository.dart';

class MockCryptoRepository implements CryptoRepository {
 @override
Future<List<CryptoModel>> fetchCryptoList({int offset = 0, int limit = 15}) async {
  final jsonString = await rootBundle.loadString('lib/data/mock/mock_crypto.json');
  final List<dynamic> jsonList = json.decode(jsonString);
  return jsonList.map((e) => CryptoModel.fromJson(e)).toList();
}
} 