import '../crypto_model.dart';

abstract class CryptoRepository {
  Future<List<CryptoModel>> fetchCryptoList({int offset = 0, int limit = 15});
}
