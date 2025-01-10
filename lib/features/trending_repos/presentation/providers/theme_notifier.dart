import 'package:flutter/material.dart';
import 'package:trending_git_repos_test/core/helpers/pref_storage_helper.dart';

class ThemeNotifier extends ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  ThemeNotifier() {
    _loadTheme();
  }

  void toggleTheme() async {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
    _saveTheme();
  }

  Future<void> _loadTheme() async {
    _isDarkMode = PrefStorageHelper.instance.isDarkMode;
    notifyListeners();
  }

  void _saveTheme() {
    PrefStorageHelper.instance.isDarkMode = _isDarkMode;
  }
}
