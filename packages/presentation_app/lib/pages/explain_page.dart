import 'package:flutter/material.dart';

import 'base/base_page.dart';
import 'catalog_page.dart';

class ExplainPage extends StatelessWidget {
  const ExplainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      nextPage: const CatalogPage(),
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontSize: 40,
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'flutter_animate ',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Colors.blueAccent,
                        fontSize: 56,
                      ),
                ),
                const Text('とは...'),
              ],
            ),
            const Text('''
・ アニメーションを直感的に実装可能にするパッケージ'''),
            const Text('''
・ Wonderous の作成チームが作成している'''),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
