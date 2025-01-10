import 'package:shared_preferences/shared_preferences.dart';

class PrefStorageHelper {
  static final PrefStorageHelper _instance = PrefStorageHelper._internal();
  static PrefStorageHelper get instance => _instance;
  factory PrefStorageHelper() => _instance;
  PrefStorageHelper._internal();

  static late SharedPreferences _prefs;

  static const _keyIsDarkMode = 'isDarkMode';

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  bool get isDarkMode => _prefs.getBool(_keyIsDarkMode) ?? false;

  set isDarkMode(bool isConfigured) =>
      _prefs.setBool(_keyIsDarkMode, isConfigured);
}
