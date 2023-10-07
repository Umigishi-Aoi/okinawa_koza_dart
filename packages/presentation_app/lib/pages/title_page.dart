import 'package:flutter/material.dart';

import 'base/base_page.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BasePage(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  '''flutter_animate''',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w900,
                    fontSize: 100,
                  ),
                ),
                Text(
                  '''で''',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 100,
                  ),
                ),
              ],
            ),
            Text(
              '''で直感的にアニメーションを''',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 100,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '''実装しよう''',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 100,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
