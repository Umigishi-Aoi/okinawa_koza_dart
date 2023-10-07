import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
                Text('問題'),
              ],
            ),
            Assets.images.icon
                .image()
                .animate(onPlay: (controller) => controller.repeat())
                .shake(hz: 4, curve: Curves.easeInOutCubic, duration: 1800.ms)
                .scale(end: const Offset(1.1, 1.1), duration: 600.ms)
                .then(delay: 600.ms)
                .scale(
                  begin: const Offset(1.1, 1.1),
                  end: const Offset(1 / 1.1, 1 / 1.1),
                ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('flutter_animate パッケージを使った'),
                    Text('このアニメーション、何行だと思いますか？'),
                  ],
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('A : 10行'),
                Text('B : 31行'),
                Text('C : 63行'),
              ],
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
