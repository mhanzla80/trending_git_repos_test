import 'package:trending_git_repos_test/core/network/api_client.dart';
import 'package:trending_git_repos_test/core/network/api_constants.dart';

import '../models/repository_model.dart';
import 'i_trending_repository.dart';

class TrendingRepositoryImpl implements ITrendingRepository {
  final IApiClient _apiClient;
  const TrendingRepositoryImpl(this._apiClient);

  @override
  Future<List<RepositoryModel>> fetchTrendingRepos() async {
    final response = await _apiClient.get(ApiConstants.trendingEndpoint);
    final List items = response.data['items'];
    return items.map((json) => RepositoryModel.fromJson(json)).toList();
  }
}
