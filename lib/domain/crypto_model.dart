import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_model.freezed.dart';

// Represents a crypto asset
@freezed
class CryptoModel with _$CryptoModel {
  const factory CryptoModel({
    required String symbol,
    required double priceUsd,
  }) = _CryptoModel;

  // Parses API or mock data
  factory CryptoModel.fromJson(Map<String, dynamic> json) {
    return CryptoModel(
      symbol: json['symbol'] ?? '',
      priceUsd: double.tryParse(json['priceUsd']?.toString() ?? '0') ?? 0,
    );
  }
} 