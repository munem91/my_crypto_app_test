import '../../domain/crypto_model.dart';
import '../../domain/repositories/crypto_repository.dart';
import '../api/api_client.dart';

class ApiCryptoRepository implements CryptoRepository {
  final ApiClient api;

  ApiCryptoRepository(this.api);

  @override
  Future<List<CryptoModel>> fetchCryptoList({int offset = 0, int limit = 15}) async {
    final raw = await api.getAssets(offset: offset, limit: limit);
    return raw.map((e) => CryptoModel.fromJson(e)).toList();
  }
}
