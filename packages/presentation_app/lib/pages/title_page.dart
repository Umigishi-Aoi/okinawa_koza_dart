import 'package:flutter/material.dart';

import 'agenda_page.dart';
import 'base/base_page.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      invokeByRight: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => const AgendaPage()));
      },
      invokeByLeft: () {},
      child: const Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              '''
2023/10/08
沖縄 コザ.dart
Aoi''',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Center(
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
        ],
      ),
    );
  }
}
