import 'package:flutter/material.dart';
import 'package:quran_app_c12_offline/my_app/my_app.dart';
import 'package:quran_app_c12_offline/provider/settings_provider.dart';

void main() {
  runApp(
    ChangeNotifier(
      create: (context) => SettingsProvider(),
      child: const MyApp(),
    ),
  );
}

