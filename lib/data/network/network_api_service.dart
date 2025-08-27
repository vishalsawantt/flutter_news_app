import 'package:dio/dio.dart';
import 'base_api_service.dart';

class NetworkApiService extends BaseApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://newsapi.org/v2',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 15),
      responseType: ResponseType.json,
    ),
  );

  @override
  Future<dynamic> getApi(String url) async {
    try {
      final response = await _dio.get(url);

      if (response.statusCode == 200) {
        return response.data; // Dio already decodes JSON
      } else {
        throw Exception("Failed to load data: ${response.statusCode}");
      }
    } on DioError catch (e) {
      throw Exception("Network error: ${e.message}");
    } catch (e) {
      throw Exception("Unexpected error: $e");
    }
  }
}
