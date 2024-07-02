import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:kuber/screens/sign_in_screen.dart';
import 'package:kuber/theme/dark_theme.dart';
import 'package:kuber/theme/light_theme.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: LightTheme.theme,
      darkTheme: DarkTheme.theme,
      routes: {
        '/': (context) => const SignInScreen(),
      },
    );
  }
}