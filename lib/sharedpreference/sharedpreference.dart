import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static final SharedPreferencesService _instance = SharedPreferencesService._internal();
  SharedPreferences? _prefs;

  factory SharedPreferencesService() {
    return _instance;
  }

  SharedPreferencesService._internal();

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Setters
  Future<void> setString(String key, String value) async {
    await _prefs?.setString(key, value);
  }

  Future<void> setInt(String key, int value) async {
    await _prefs?.setInt(key, value);
  }

  Future<void> setBool( String key, bool value) async {
    await _prefs?.setBool(key, value);
  }

  // Getters
  String? getString(String key) {
    return _prefs?.getString(key);
  }

  int? getInt(String key) {
    return _prefs?.getInt(key);
  }

  bool? getBool(String key) {
    return _prefs?.getBool(key);
  }

  // Remove
  Future<void> remove(String key) async {
    await _prefs?.remove(key);
  }
}