import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app_c12_offline/config/theme/my_theme.dart';
import 'package:quran_app_c12_offline/core/utils/assets_manager.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/quran_tab/quran_details/quran_widget.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/quran_tab/widgets/quran_title_widget/quran_title_widget.dart';

class QuranDetailsScreen extends StatefulWidget {
  const QuranDetailsScreen({
    super.key,
  });

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> verses = [];

  // late SuraArgs args;
  // @override
  // void initState() {
  //   super.initState();
  //    args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
  //  readFile(args.index);
  // }

  @override
  Widget build(BuildContext context) {
    SuraArgs args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    if (verses.isEmpty) readFile(args.index);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyTheme.isDarkEnabled
                  ? AssetsManager.darkMainBg
                  : AssetsManager.lightMainBg),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(title: Text(args.suraName)),
        body: verses.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                // separatorBuilder: (context, index) => Container(
                //   margin: EdgeInsets.symmetric(horizontal: 40),
                //   color: Theme.of(context).dividerColor,
                //   width: double.infinity,
                //
                //   height: 2,
                // ),
                itemBuilder: (context, index) =>
                    VerseWidget(verseItem: verses[index]),
                itemCount: verses.length,
              ),
      ),
    );
  }

  int add(int n1, int n2) {
    return n1 + n2;
  }

  void readFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> fileLines = fileContent.split('\n');
    verses = fileLines;
    for (var element in fileLines) {
        print(element);
      }
    setState(() {});
  }
}
