import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../gen/assets.gen.dart';
import 'base/base_page.dart';
import 'explain_page.dart';

class AnswerPage extends StatelessWidget {
  const AnswerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      nextPage: const ExplainPage(),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Assets.images.icon
                    .image()
                    .animate(onPlay: (controller) => controller.repeat())
                    .shake(
                      hz: 4,
                      curve: Curves.easeInOutCubic,
                      duration: 1800.ms,
                    )
                    .scale(end: const Offset(1.1, 1.1), duration: 600.ms)
                    .then(delay: 600.ms)
                    .scale(
                      begin: const Offset(1.1, 1.1),
                      end: const Offset(1 / 1.1, 1 / 1.1),
                    ),
                Assets.images.animateCode.image(scale: 1.5),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'A : 10行',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 56,
                        color: Colors.blueAccent,
                      ),
                ),
                const Text('B : 31行'),
                const Text('C : 63行'),
              ],
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
