import '../models/repository_model.dart';

abstract class ITrendingRepository {
  Future<List<RepositoryModel>> fetchTrendingRepos();
}
