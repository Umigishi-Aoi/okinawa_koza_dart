import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../gen/assets.gen.dart';
import 'base/base_page.dart';

class ThanksPage extends StatelessWidget {
  const ThanksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      nextPage: const ThanksPage(),
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 104,
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('''
ご清聴
    ありがとうございました!''')
                      .animate(
                        onPlay: (controller) => controller.repeat(),
                      )
                      .shimmer(duration: 2000.ms),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [const Text('SNS : '), Assets.images.qr.image()],
            ),
          ],
        ),
      ),
    );
  }
}
