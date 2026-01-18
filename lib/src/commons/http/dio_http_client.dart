import 'package:dio/dio.dart';
import 'package:flutter_api_consumption_challenge/src/commons/http/http_client.dart';

class DioHttpClient implements HttpClientInterface {
  final Dio dio;

  DioHttpClient(this.dio);

  @override
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) {
    return dio.get<T>(path, queryParameters: queryParameters);
  }
}
