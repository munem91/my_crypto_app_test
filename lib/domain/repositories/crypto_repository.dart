import '../crypto_model.dart';

abstract class CryptoRepository {
  Future<List<CryptoModel>> fetchCryptoList();
} 