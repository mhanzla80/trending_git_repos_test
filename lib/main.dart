import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trending_git_repos_test/core/injector.dart';
import 'package:trending_git_repos_test/features/trending_repos/presentation/screens/trending_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injector.initialize();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifier = ref.watch(Injector.themeNotifierProvider);

    return MaterialApp(
      title: 'Trending Repos',
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: themeNotifier.isDarkMode ? ThemeMode.light : ThemeMode.dark,
      home: const TrendingScreen(),
    );
  }
}
