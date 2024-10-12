import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'English',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Icon(Icons.check),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          Text('Arabic', style: Theme.of(context).textTheme.displayMedium),
        ],
      ),
    );
  }
}
