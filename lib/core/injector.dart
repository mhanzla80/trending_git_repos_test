import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trending_git_repos_test/core/network/api_client.dart';
import 'package:trending_git_repos_test/core/network/api_constants.dart';
import 'package:trending_git_repos_test/features/trending_repos/data/repositories/i_trending_repository.dart';
import 'package:trending_git_repos_test/features/trending_repos/data/repositories/trending_repository_impl.dart';
import 'package:trending_git_repos_test/features/trending_repos/domain/usecases/fetch_trending_repos_usecase.dart';

abstract final class Injector {
  static final ProviderContainer _container = ProviderContainer();

  // Public API for accessing dependencies
  static T get<T>(ProviderBase<T> provider) => _container.read(provider);

  // API Client Provider
  static final apiClientProvider = Provider<IApiClient>((ref) {
    return ApiClient(Dio(BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: Duration(milliseconds: 5000),
      receiveTimeout: Duration(milliseconds: 3000),
    )));
  });

  // Repository Provider
  static final trendingRepositoryProvider = Provider<ITrendingRepository>(
      (ref) => TrendingRepositoryImpl(ref.read(apiClientProvider)));

  // Use Case Provider
  static final fetchTrendingReposUseCaseProvider =
      Provider<FetchTrendingReposUseCase>(
    (ref) => FetchTrendingReposUseCase(ref.read(trendingRepositoryProvider)),
  );
}
