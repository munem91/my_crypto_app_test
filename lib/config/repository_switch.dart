import '../data/api/api_client.dart';
import '../data/repositories/api_crypto_repository.dart';
import '../data/repositories/mock_crypto_repository.dart';
import '../domain/repositories/crypto_repository.dart';

bool useMock = false;

CryptoRepository getRepository() {
  if (useMock) {
    return MockCryptoRepository();
  } else {
    return ApiCryptoRepository(ApiClient());
  }
} 