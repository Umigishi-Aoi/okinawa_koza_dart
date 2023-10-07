import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
import 'answer_page.dart';
import 'base/base_page.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      nextPage: const AnswerPage(),
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
                Text('A : 5行以下'),
                Text('B : 5行より多く、15行以下'),
                Text('C : 15行より多い'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
