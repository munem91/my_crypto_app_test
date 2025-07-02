import 'package:dio/dio.dart';
import '../../config/.env.dart';


class ApiClient {
  final Dio dio;

  ApiClient()
      : dio = Dio(
          BaseOptions(
            baseUrl: 'https://rest.coincap.io',
          ),
        );

  Future<List<Map<String, dynamic>>> getAssets({
    required int offset,
    required int limit,
  }) async {
    final response = await dio.get(
      '/v3/assets',
      queryParameters: {
        'limit': limit,
        'offset': offset,
        'apiKey': coinCapApiKey,
      },
    );
    final data = response.data['data'] as List;
    return data.cast<Map<String, dynamic>>();
  }
}
