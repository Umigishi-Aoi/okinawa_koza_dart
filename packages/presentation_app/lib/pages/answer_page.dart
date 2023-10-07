import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
import 'base/base_page.dart';

class AnswerPage extends StatelessWidget {
  const AnswerPage({super.key});

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
                Text('正解は...'),
              ],
            ),
            Assets.images.icon.image(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'A : 5行以下',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 56,
                        color: Colors.blueAccent,
                      ),
                ),
                const Text('B : 5行より多く、15行以下'),
                const Text('C : 15行より多い'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
