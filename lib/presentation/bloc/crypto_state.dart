import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/crypto_model.dart';

part 'crypto_state.freezed.dart';

@freezed
class CryptoState with _$CryptoState {
  const factory CryptoState.initial() = _Initial;
  const factory CryptoState.loading() = _Loading;
    const factory CryptoState.success(List<CryptoModel> data) = _Success;
  const factory CryptoState.failure(String message) = _Failure;
} 