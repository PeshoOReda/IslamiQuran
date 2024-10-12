import 'package:flutter/material.dart';
import 'package:quran_app_c12_offline/core/utils/routes_manager.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/hadith_tab/hadith_tab.dart';

class HadithTitleWidget extends StatelessWidget {
  const HadithTitleWidget({super.key, required this.hadith});

  final HadithItem hadith;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutesManager.hadithDetailsRoute,
          arguments: hadith,
        );
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text(
          hadith.title,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}
