import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app_c12_offline/core/utils/assets_manager.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/hadith_tab/widgets/hadith_header_name.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/hadith_tab/widgets/hadith_title_widget.dart';

class HadithTab extends StatefulWidget {
  const HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<HadithItem> allHadithList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadithList.isEmpty) redHadithFile();
    return Column(
      children: [
        Expanded(
            flex: 1, child: Image.asset(AssetsManager.hadithHeaderImage)),
        const HadithHeaderName(),
        Expanded(
          flex: 3,
          child: ListView.separated(
            separatorBuilder: (context, index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              color: Theme.of(context).dividerColor,
              height: 2,
            ),
            itemBuilder: (context, index) =>
                HadithTitleWidget(hadith: allHadithList[index]),
            itemCount: allHadithList.length,
          ),
        )
      ],
    );
  }

  void redHadithFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadithItemList = fileContent.split('#');
    for (var hadith in hadithItemList) {
      List<String> hadithLines = hadith.trim().split('\n');
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      String content = hadithLines.join('\n');
      HadithItem hadithItem = HadithItem(title: title, content: content);
      allHadithList.add(hadithItem);
    }
    setState(() {});
  }
}

class HadithItem {
  String title;
  String content;

  HadithItem({required this.title, required this.content});
}
