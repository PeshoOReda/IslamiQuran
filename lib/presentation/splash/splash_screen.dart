import 'package:flutter/material.dart';
import 'package:quran_app_c12_offline/core/utils/assets_manager.dart';
import 'package:quran_app_c12_offline/core/utils/routes_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // here write ur code, will be executed after duration
        Navigator.pushReplacementNamed(context, RoutesManager.homeRoute);
      },
    ); // non blocking
    return Scaffold(
      body: Image.asset(
        AssetsManager.lightSplashScreen,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
