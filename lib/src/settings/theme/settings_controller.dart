import 'package:flutter/material.dart';
import 'package:portfolio/src/settings/theme/settings_service.dart';

class SettingsController extends ChangeNotifier {
  SettingsController(this._settingService);

  final SettingService _settingService;

late ThemeMode _themeMode;

  ThemeMode get themeMode => _themeMode;

  Future<void> loadSettings() async {
    _themeMode = await _settingService.themeMode();
    notifyListeners();
  }

  Future<void> updateThemeMode(ThemeMode themeMode) async {
    _themeMode = themeMode;
    await _settingService.updateThemeMode(themeMode);
    notifyListeners();
  }
}
