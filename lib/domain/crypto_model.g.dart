// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CryptoModelImpl _$$CryptoModelImplFromJson(Map<String, dynamic> json) =>
    _$CryptoModelImpl(
      symbol: json['symbol'] as String,
      priceUsd: (json['priceUsd'] as num).toDouble(),
    );

Map<String, dynamic> _$$CryptoModelImplToJson(_$CryptoModelImpl instance) =>
    <String, dynamic>{'symbol': instance.symbol, 'priceUsd': instance.priceUsd};
