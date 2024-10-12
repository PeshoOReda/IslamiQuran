import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  final String verseItem;

  const VerseWidget({super.key, required this.verseItem});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Card(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          alignment: Alignment.center,
          child: Text(
            verseItem,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
