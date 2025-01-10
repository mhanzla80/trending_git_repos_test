# trending_git_repos_test

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Project Structure

```bash
lib/
├── main.dart
├── core/
│   ├── network/
│   │   ├── api_client.dart
│   │   └── api_constants.dart
│   ├── theme/
│   │   └── app_theme.dart
│   └── utils/
│       └── extensions.dart
├── features/
│   ├── trending_repos/
│   │   ├── data/
│   │   │   ├── models/
│   │   │   │   └── repository_model.dart
│   │   │   ├── repositories/
│   │   │   │   ├── i_trending_repository.dart
│   │   │   │   └── trending_repository_impl.dart
│   │   ├── domain/
│   │   │   └── usecases/
│   │   │       └── fetch_trending_repos_usecase.dart
│   │   └── presentation/
│   │       ├── screens/
│   │       │   └── trending_screen.dart
│   │       ├── providers/
│   │       │   └── trending_providers.dart
│   │       └── widgets/
│   │           ├── repo_item.dart
│   │           ├── shimmer_loader.dart
│   │           └── error_state_widget.dart

```