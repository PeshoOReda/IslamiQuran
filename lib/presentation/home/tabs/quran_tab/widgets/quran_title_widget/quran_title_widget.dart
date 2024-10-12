import 'package:flutter/material.dart';
import 'package:quran_app_c12_offline/core/utils/routes_manager.dart';

class QuranTitleWidget extends StatelessWidget {
  final String suraTitle;
  final String numOfVerses;
  final int index;

  const QuranTitleWidget(
      {super.key,
      required this.suraTitle,
      required this.numOfVerses,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, RoutesManager.quranDetailsRoute,
              arguments: SuraArgs(suraName: suraTitle, index: index));
        },
        child: Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                child: Text(
              suraTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            )),
            Expanded(
                child: VerticalDivider(
              color: Theme.of(context).dividerColor,
              width: 3,
              thickness: 3,
            )),
            Expanded(
                child: Text(
              numOfVerses,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            )),
          ],
        ),
      ),
    );
  }
}

class SuraArgs {
  String suraName;
  int index;

  SuraArgs({required this.suraName, required this.index});
}
