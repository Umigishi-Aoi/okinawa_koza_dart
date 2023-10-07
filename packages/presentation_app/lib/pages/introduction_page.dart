import 'package:flutter/material.dart';

import 'base/base_page.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      nextPage: Container(),
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
                      fontSize: 56,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
