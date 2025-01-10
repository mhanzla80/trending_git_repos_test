import 'package:dio/dio.dart';

abstract class IApiClient {
  Future<Response> get(String endpoint);
}

class ApiClient implements IApiClient {
  final Dio _dio;
  const ApiClient(this._dio);

  @override
  Future<Response> get(String endpoint) {
    try {
      return _dio.get(endpoint);
    } catch (e) {
      rethrow;
    }
  }
}
