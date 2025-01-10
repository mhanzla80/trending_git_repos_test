import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trending_git_repos_test/core/exceptions/no_internet_exception.dart';
import 'package:trending_git_repos_test/presentation/providers/trending_providers.dart';
import 'package:trending_git_repos_test/presentation/widgets/error_state_widget.dart';
import 'package:trending_git_repos_test/presentation/widgets/repo_item.dart';
import 'package:trending_git_repos_test/presentation/widgets/shimmer_loader.dart';

class TrendingScreen extends ConsumerWidget {
  const TrendingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trendingReposAsync =
        ref.watch(TrendingProviders.trendingReposProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Trending Repositories'),
        centerTitle: true,
      ),
      body: trendingReposAsync.when(
        data: (repos) {
          if (repos.isEmpty) {
            return const Center(
              child: Text('No trending repositories found.'),
            );
          }
          return ListView.builder(
            itemCount: repos.length,
            itemBuilder: (_, index) => RepoItem(repo: repos[index]),
          );
        },
        loading: () => const ShimmerLoader(),
        error: (error, _) => _handleErrorState(error, _, ref),
      ),
    );
  }

  Widget _handleErrorState(Object error, StackTrace stackTrace, WidgetRef ref) {
    String errorMessage = 'Something went wrong';
    if (error is NoInternetException) {
      errorMessage = error.message;
    }
    return ErrorStateWidget(
      errorMessage: errorMessage,
      onRetry: () {
        ref.invalidate(TrendingProviders.trendingReposProvider);
      },
    );
  }
}
