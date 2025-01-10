import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trending_git_repos_test/core/network/internet_connection_checker.dart';
import 'package:trending_git_repos_test/presentation/screens/trending_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await InternetConnectivityChecker.instance.initialize();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trending Repos',
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      home: const TrendingScreen(),
    );
  }
}
