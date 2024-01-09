import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends StateNotifier<ThemeMode> {
  ThemeController() : super(ThemeMode.light) {
    _loadThemeMode();
  }

  Future<void> _loadThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    final isDarkMode = prefs.getBool('isDarkMode') ?? false;
    state = isDarkMode ? ThemeMode.dark : ThemeMode.light;
  }

  Future<void> toggleTheme() async {
    final isDarkMode = state == ThemeMode.dark;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', !isDarkMode);
    state = !isDarkMode ? ThemeMode.dark : ThemeMode.light;
  }
}
// -----------------------------------------------------------------------------

final themeProvider = StateNotifierProvider<ThemeController, ThemeMode>((ref) {
  return ThemeController();
});
