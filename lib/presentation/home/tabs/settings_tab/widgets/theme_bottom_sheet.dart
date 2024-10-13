import 'package:flutter/material.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
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
                'Light',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Icon(Icons.check),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          Text('Dark', style: Theme.of(context).textTheme.displayMedium),
        ],
      ),
    );
  }
}
