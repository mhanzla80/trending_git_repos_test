import '../../data/models/repository_model.dart';
import '../../data/repositories/i_trending_repository.dart';

class FetchTrendingReposUseCase {
  final ITrendingRepository _repository;
  const FetchTrendingReposUseCase(this._repository);

  Future<List<RepositoryModel>> call() => _repository.fetchTrendingRepos();
}
