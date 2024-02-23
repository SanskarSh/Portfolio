import 'package:flutter/material.dart';
import 'package:portfolio/src/app.dart';
import 'package:portfolio/src/settings/theme/settings_controller.dart';
import 'package:portfolio/src/settings/theme/settings_service.dart';

void main() async {
  final settingsController = SettingsController(SettingService());
  await settingsController.loadSettings();
  runApp(MyApp(controller: settingsController));
}
