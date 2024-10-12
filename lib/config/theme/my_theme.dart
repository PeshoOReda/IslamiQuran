import 'package:flutter/material.dart';
import 'package:quran_app_c12_offline/core/utils/colors_manager.dart';

class MyTheme {
  static bool isDarkEnabled = false;
  static final ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: ColorsManager.goldColor,
      ),
      primaryColor: ColorsManager.goldColor,
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.black,
            fontFamily: 'ElMessiri-Bold.ttf'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      cardTheme: CardTheme(
        color: Colors.white,
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.all(8),
      ),
      dividerColor: ColorsManager.goldColor,
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(
            size: 36,
          ),
          unselectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          elevation: 20),
      bottomSheetTheme: BottomSheetThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        elevation: 18,
        backgroundColor: Colors.white,
      ),
      iconTheme: const IconThemeData(
        color: ColorsManager.goldColor,
        size: 30,
      ),
      textTheme: const TextTheme(
          displayMedium: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),
          titleSmall: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
          bodySmall: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
          displaySmall: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
          labelSmall: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700),
          bodyMedium: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: ColorsManager.goldColor),
          bodyLarge: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 20, color: Colors.black)));

  static final ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: ColorsManager.darkBlue,
          primary: ColorsManager.darkBlue,
          onPrimary: Colors.yellow),
      primaryColor: ColorsManager.darkBlue,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontFamily: 'ElMessiri-Bold.ttf'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      cardTheme: CardTheme(
        color: ColorsManager.darkBlue,
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.all(8),
      ),
      iconTheme: const IconThemeData(
        color: ColorsManager.yellowColor,
        size: 30,
      ),
      dividerColor: ColorsManager.yellowColor,
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: ColorsManager.yellowColor,
          selectedIconTheme: IconThemeData(
            size: 36,
          ),
          unselectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          elevation: 20),
      bottomSheetTheme: BottomSheetThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        elevation: 18,
        backgroundColor: ColorsManager.darkBlue,
      ),
      textTheme: const TextTheme(
          titleSmall: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
          displayMedium: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),
          bodySmall: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
          displaySmall: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
          labelSmall: TextStyle(
              fontSize: 16,
              color: ColorsManager.yellowColor,
              fontWeight: FontWeight.w700),
          bodyMedium: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: ColorsManager.yellowColor),
          bodyLarge: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: ColorsManager.yellowColor)));

// static final ThemeData darkTheme = ThemeData(
//     primaryColor: const Color(0xFFFACC1D),
//     appBarTheme: const AppBarTheme(
//       titleTextStyle: TextStyle(
//           fontSize: 22, fontWeight: FontWeight.w700, color: Colors.black),
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       centerTitle: true,
//     ),
//     scaffoldBackgroundColor: Colors.transparent,
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//         selectedItemColor: Colors.black,
//         selectedIconTheme: IconThemeData(
//           size: 36,
//         ),
//         unselectedItemColor: Colors.white,
//         showSelectedLabels: true,
//         showUnselectedLabels: false,
//         elevation: 20));
}
