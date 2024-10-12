import 'package:flutter/material.dart';
import 'package:quran_app_c12_offline/config/theme/my_theme.dart';
import 'package:quran_app_c12_offline/core/utils/assets_manager.dart';
import 'package:quran_app_c12_offline/core/utils/strings_manager.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/radio_tab/radio_tab.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/settings_tab/settings_tab_tab.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/tasbeh_tab/tasbeh_tab_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    const HadithTab(),
    const TasbehTab(),
    const RadioTab(),
    const SettingsTab(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyTheme.isDarkEnabled
                  ? AssetsManager.darkMainBg
                  : AssetsManager.lightMainBg),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('القران'),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Theme.of(context).primaryColor),
          child: BottomNavigationBar(
              onTap: (index) {
                setState(() {
                  selectedIndex = index; // 1
                });
              },
              currentIndex: selectedIndex,
              items: const [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AssetsManager.quranIcon)),
                    label: StringsManager.quranLabel),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AssetsManager.hadithIcon)),
                    label: StringsManager.hadithLabel),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AssetsManager.tasbehIcon)),
                    label: StringsManager.tasbehLabel),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AssetsManager.radioIcon)),
                    label: StringsManager.radioLabel),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: StringsManager.settingsLabel),
              ]),
        ),

        body: tabs[selectedIndex], // 1
      ),
    );
  }
}
