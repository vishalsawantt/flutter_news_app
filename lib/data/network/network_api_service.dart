import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:newsapp/data/app_exception.dart';
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
    if (kDebugMode) {
      print("URL is " + url);
    }
    // try {
    //   final response = await _dio.get(url);

    //   if (response.statusCode == 200) {
    //     return response.data; // Dio already decodes JSON
    //   } else {
    //     throw Exception("Failed to load data: ${response.statusCode}");
    //   }
    // } on DioError catch (e) {
    //   throw Exception("Network error: ${e.message}");
    // } catch (e) {
    //   throw Exception("Unexpected error: $e");
    // }
    dynamic responseJson;

    try {
      final response = await _dio.get(url);
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }

    return responseJson;
  }

  dynamic returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        return response.data;
      case 400:
        throw InvalidUrlException;
      default:
      throw FetchDataException('Error accoured while communicating with server'+response.statusCode.toString());
    }
  }
}
