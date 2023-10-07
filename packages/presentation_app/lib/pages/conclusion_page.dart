import 'package:flutter/material.dart';

import 'base/base_page.dart';
import 'thanks_page.dart';

class ConclusionPage extends StatelessWidget {
  const ConclusionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      nextPage: const ThanksPage(),
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontSize: 48,
            ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('まとめ'),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('''
・ flutter_animateは
    アニメーションを直感的に実装可能にするパッケージ'''),
                  Text('''
・ 複雑なアニメーションを少ない行数で実装が可能'''),
                  Text('''
・ シンプルなコードで記述が可能'''),
                ],
              ),
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
