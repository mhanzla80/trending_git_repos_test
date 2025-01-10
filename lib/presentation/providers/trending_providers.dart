import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trending_git_repos_test/core/injector.dart';

class TrendingProviders {
  // FutureProvider for fetching trending repositories
  static final trendingReposProvider = FutureProvider((ref) {
    final fetchTrendingReposUseCase =
        Injector.get(Injector.fetchTrendingReposUseCaseProvider);
    return fetchTrendingReposUseCase.call();
  });
}
