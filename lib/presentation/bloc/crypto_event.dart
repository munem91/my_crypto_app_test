import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_event.freezed.dart';

@freezed
class CryptoEvent with _$CryptoEvent {
  const factory CryptoEvent.load() = _Load;
  const factory CryptoEvent.loadMore() = _LoadMore;
}
