import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../gen/assets.gen.dart';
import 'base/base_page.dart';
import 'normal_animation_page.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      nextPage: const NormalAnimationPage(),
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontSize: 32,
            ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '自己紹介',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Colors.black,
                      fontSize: 56,
                    ),
              ),
            ),
            SizedBox.expand(
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.images.icon
                            .image(scale: 0.5)
                            .animate(delay: const Duration(seconds: 30))
                            .rotate()
                            .then()
                            .animate(
                              delay: const Duration(seconds: 35),
                              onPlay: (controller) => controller.repeat(),
                            )
                            .shimmer(delay: 4000.ms, duration: 1800.ms)
                            .shake(hz: 4, curve: Curves.easeInOutCubic)
                            .scale(
                              begin: const Offset(1, 1),
                              end: const Offset(1.1, 1.1),
                              duration: 600.ms,
                            )
                            .then(delay: 600.ms)
                            .scale(
                              begin: const Offset(1, 1),
                              end: const Offset(1 / 1.1, 1 / 1.1),
                            ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('名前 : 東 優太 (アヅマ ユウタ)'),
                        const Text('Engineer name : Aoi Umigishi'),
                        const Text('年齢 : 31'),
                        const Text('出身 : 千葉'),
                        const Text('Flutter歴 : 2年'),
                        const Text('職業 : フリーランスエンジニア(Flutter)'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('SNS等 : '),
                            Assets.images.qr.image(),
                            const SizedBox(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
