import 'package:flutter/material.dart';
import 'package:trending_git_repos_test/features/trending_repos/data/models/repository_model.dart';

class RepoItem extends StatelessWidget {
  final RepositoryModel repo;
  const RepoItem({super.key, required this.repo});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(repo.owner.avatarUrl),
              radius: 30,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    repo.name,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    repo.description ?? 'No description available.',
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      _buildInfoChip(
                          context, Icons.star, '${repo.stars} Stars'),
                      const SizedBox(width: 8),
                      _buildInfoChip(
                          context, Icons.fork_right, '${repo.forks} Forks'),
                      const SizedBox(width: 8),
                      _buildInfoChip(context, Icons.code, repo.language),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoChip(BuildContext context, IconData icon, String label) {
    return Row(
      children: [
        Icon(icon, size: 16, color: Theme.of(context).colorScheme.secondary),
        const SizedBox(width: 4),
        Text(label, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
