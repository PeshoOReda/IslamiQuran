import 'package:flutter/material.dart';

import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/colors_manager.dart';
import '../../../../core/utils/strings_manager.dart';

class TasbehTab extends StatefulWidget {
  const TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int _counter = 0;
  int _counterAppear = 0;
  double _rotationAngle = 0;
  String _currentIdiom = 'سبحان اللة';

  void _incrementCounter() {
    setState(() {
      _counterAppear = (_counter + 1) % 34;
      _counter = (_counter + 1) % 102;
      _rotationAngle += 100;
      if (_counter <= 33) {
        _currentIdiom = 'سبحان اللة';
      } else if (_counter <= 67) {
        _counter = _counter;
        _currentIdiom = 'الحمد لله';
      } else if (_counter <= 102) {
        _counter = _counter;
        _currentIdiom = 'استغفر اللة';
      }
    });
  }

  void _reset() {
    setState(() {
      _counterAppear = 0;
      _counter = 0;
      _currentIdiom = 'سبحان اللة';
      _rotationAngle = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Transform.rotate(
              angle: _rotationAngle,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: MediaQuery.of(context).size.width / 2,
                    child: const Image(
                      image: AssetImage(AssetsManager.headLogoSebha),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    left: MediaQuery.of(context).size.width / 4,
                    child: const Image(
                      image: AssetImage(AssetsManager.bodyLogoSebha),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(33.0),
                  child: Text(
                    StringsManager.textBody,
                    style: TextStyle(fontSize: 33),
                  ),
                ),
                ElevatedButton(
                  onLongPress: () {
                    _reset();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsManager.goldColor,
                  ),
                  onPressed: _incrementCounter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 33),
                    child: Text(
                      '$_counterAppear',
                      style: const TextStyle(fontSize: 22),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        33,
                      ),
                      color: ColorsManager.goldColor,
                      border: Border.all(
                        color: ColorsManager.goldColor,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        _currentIdiom,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
