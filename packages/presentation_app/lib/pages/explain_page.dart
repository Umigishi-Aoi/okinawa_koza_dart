import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('''
・ アニメーションを直感的に実装可能にするパッケージ'''),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Assets.images.animateCode.image(scale: 1.8),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                const Text('''
・ '''),
                Text(
                  '''
Wonderous ''',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Colors.orangeAccent,
                        fontSize: 56,
                      ),
                ),
                const Text('''
の作成チームが作成している'''),
              ],
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
