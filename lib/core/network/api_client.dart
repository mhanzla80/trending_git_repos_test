import 'package:dio/dio.dart';
import 'package:trending_git_repos_test/core/exceptions/no_internet_exception.dart';
import 'package:trending_git_repos_test/core/network/internet_connection_checker.dart';

abstract class IApiClient {
  Future<Response> get(String endpoint);
}

class ApiClient implements IApiClient {
  final Dio _dio;
  const ApiClient(this._dio);

  @override
  Future<Response> get(String endpoint) {
    try {
      _checkInternet();
      return _dio.get(endpoint);
    } catch (e) {
      rethrow;
    }
  }

  void _checkInternet() {
    final isConnected = InternetConnectivityChecker.instance.hasConnection;
    if (!isConnected) throw NoInternetException();
  }
}
