import 'package:flutter_bloc/flutter_bloc.dart';
import 'crypto_event.dart';
import 'crypto_state.dart';
import '../../../domain/repositories/crypto_repository.dart';

class CryptoBloc extends Bloc<CryptoEvent, CryptoState> {
  final CryptoRepository repository;
  int _offset = 0;
  final int _limit = 15;

  CryptoBloc(this.repository) : super(const CryptoState.initial()) {
    on<CryptoEvent>((event, emit) async {
      await event.map(
        load: (_) async {
          emit(const CryptoState.loading());
          _offset = 0;
          try {
            final data = await repository.fetchCryptoList(offset: _offset, limit: _limit);
            _offset += _limit;
            emit(CryptoState.success(data));
          } catch (_) {
            emit(const CryptoState.failure('Failed to load'));
          }
        },
        loadMore: (_) async {
          // используем maybeMap для безопасного доступа к состоянию success
          await state.maybeMap(
            success: (successState) async {
              final currentData = successState.data;
              try {
                final more = await repository.fetchCryptoList(offset: _offset, limit: _limit);
                _offset += _limit;
                emit(CryptoState.success([...currentData, ...more]));
              } catch (_) {
                emit(const CryptoState.failure('Failed to load more'));
              }
            },
            orElse: () {},
          );
        },
      );
    });
  }
}
