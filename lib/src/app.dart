import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:portfolio/src/features/error/error_screen.dart';
import 'package:portfolio/src/features/home/screen/home_screen.dart';
import 'package:portfolio/src/settings/theme/settings_controller.dart';
import 'package:portfolio/src/settings/theme/thene.dart';

class MyApp extends StatelessWidget {
  final SettingsController controller;

  const MyApp({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: controller,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          restorationScopeId: "/home",
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,
          supportedLocales: const [
            Locale('en', ''),
          ],
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          themeMode: controller.themeMode,
          theme: MyTheme.lightTheme,
          darkTheme: MyTheme.darkTheme,

          onGenerateRoute: (RouteSettings settings) {
            return MaterialPageRoute<void>(
              settings: settings,
              builder: (BuildContext context) {
                switch (settings.name) {
                  case HomeScreen.routeName:
                    return HomeScreen(
                      controller: controller,
                    );
                  default:
                    return const ErrorScreen();
                }
              },
            );
          },
        );
      },
    );
  }
}
