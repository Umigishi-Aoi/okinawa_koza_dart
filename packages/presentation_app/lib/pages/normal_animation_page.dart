import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
import '../widget/my_animation_widget.dart';
import 'base/base_page.dart';
import 'question_page.dart';

class NormalAnimationPage extends StatelessWidget {
  const NormalAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      nextPage: const QuestionPage(),
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontSize: 32,
            ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '''
Flutterのアニメーション
パッケージ未使用''',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Colors.black,
                      fontSize: 56,
                    ),
              ),
            ),
            SizedBox.expand(
              child: Row(
                children: [
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyAnimationWidget(),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.images.animateCodeNormal.image(),
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
