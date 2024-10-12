import 'package:flutter/material.dart';
import 'package:quran_app_c12_offline/core/utils/strings_manager.dart';

class ChapterNameWidget extends StatelessWidget {
  const ChapterNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        //margin: EdgeInsets.symmetric(horizontal: 60),

        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.symmetric(
          horizontal:
              BorderSide(color: Theme.of(context).dividerColor, width: 2),
        )),
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            textDirection: TextDirection.rtl,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    StringsManager.chapterName,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: VerticalDivider(
                  color: Theme.of(context).dividerColor,
                  width: 2,
                  thickness: 2,
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(StringsManager.versesNum,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w600, fontSize: 20)),
                ),
              )
            ],
          ),
        ));
  }
}
