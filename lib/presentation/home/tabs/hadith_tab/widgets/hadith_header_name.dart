import 'package:flutter/material.dart';
import 'package:quran_app_c12_offline/core/utils/strings_manager.dart';

class HadithHeaderName extends StatelessWidget {
  const HadithHeaderName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal:
                  BorderSide(color: Theme.of(context).dividerColor, width: 2))),
      child: Text(
        StringsManager.ahadithName,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
