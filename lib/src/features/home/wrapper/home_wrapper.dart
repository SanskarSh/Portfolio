import 'package:flutter/material.dart';
import 'package:portfolio/src/features/home/screen/mobile_home_screen.dart';
import 'package:portfolio/src/features/home/screen/web_home_screen.dart';
import 'package:portfolio/src/settings/theme/settings_controller.dart';

class HomeWrapper extends StatelessWidget {
  final SettingsController controller;
  const HomeWrapper({super.key, required this.controller});
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 870) {
          return MobileHomeScreen(
            controller: controller,
          );
        }
        return WebHomeScreen(controller: controller);
      },
    );
  }
}
