import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
import 'base/base_page.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontSize: 56,
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Text('質問'),
              ],
            ),
            Assets.images.icon.image(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('このアニメーション何行だと思いますか？'),
              ],
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('A : 10行以下'),
                Text('B : 10行より多く、30行以下'),
                Text('B : 30行より多い'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
