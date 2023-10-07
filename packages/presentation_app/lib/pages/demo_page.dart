import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
import 'base/base_page.dart';
import 'conclusion_page.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      nextPage: const ConclusionPage(),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'デモ',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Colors.black,
                    fontSize: 56,
                  ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.images.icon.image(scale: 0.5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
