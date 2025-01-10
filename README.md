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
├── main.dart                            # Entry point of the application
├── core/                                # Core functionality and shared utilities
│   ├── injector.dart                    # Centralized dependency injector
│   ├── network/                         # Networking layer
│   │   ├── api_client.dart              # API client with interface
│   │   └── api_constants.dart           # API endpoint constants
│   ├── theme/                           # App theming
│   │   └── app_theme.dart               # Light and dark themes
│   └── utils/                           # Utility classes and extensions
│       └── extensions.dart              # Custom Dart extensions (optional)
├── features/                            # Features/modules of the app
│   ├── trending_repos/                  # Trending repositories feature
│   │   ├── data/                        # Data layer
│   │   │   ├── models/                  # Data models
│   │   │   │   └── repository_model.dart # Repository data model
│   │   │   ├── repositories/            # Repository implementations
│   │   │   │   ├── i_trending_repository.dart # Repository interface
│   │   │   │   └── trending_repository_impl.dart # Repository implementation
│   │   ├── domain/                      # Business logic layer
│   │   │   └── usecases/                # Use cases
│   │   │       └── fetch_trending_repos_usecase.dart # Fetch trending repos use case
│   │   └── presentation/                # Presentation layer (UI)
│   │       ├── screens/                 # Screens for the feature
│   │       │   └── trending_screen.dart # Main screen for trending repositories
│   │       ├── providers/               # State management providers
│   │       │   └── trending_providers.dart # Providers for Riverpod
│   │       └── widgets/                 # Custom UI widgets
│   │           ├── repo_item.dart       # Repository list item widget
│   │           ├── shimmer_loader.dart  # Shimmer loading animation
│   │           └── error_state_widget.dart # Error state with retry button
└── pubspec.yaml                         # Dependency management file

```