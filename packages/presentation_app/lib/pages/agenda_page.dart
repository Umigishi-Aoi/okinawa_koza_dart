import 'package:flutter/material.dart';

import 'base/base_page.dart';

class AgendaPage extends StatelessWidget {
  const AgendaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      invokeByRight: () {},
      invokeByLeft: () {
        Navigator.of(context).pop();
      },
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontSize: 56,
            ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('1. 自己紹介'),
              Text('2. flutter_animate とは'),
              Text('3. flutter_animate で実装できるアニメーション'),
              Text('4. まとめ'),
            ],
          ),
        ),
      ),
    );
  }
}
