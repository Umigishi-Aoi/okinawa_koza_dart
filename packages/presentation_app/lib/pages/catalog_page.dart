import 'package:flutter/material.dart';
import 'package:flutter_animate_sample/flutter_animate_sample.dart';

import 'base/base_page.dart';
import 'demo_page.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BasePage(
      nextPage: DemoPage(),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: FlutterAnimateSample(),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text('flutter_animate exampleより'),
          ),
        ],
      ),
    );
  }
}
