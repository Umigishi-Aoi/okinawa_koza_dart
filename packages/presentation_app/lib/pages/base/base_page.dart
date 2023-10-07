import 'package:flutter/material.dart';

import 'background.dart';

class BasePage extends StatelessWidget {
  const BasePage({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          Padding(
            padding: EdgeInsets.all(deviceHeight * 0.05),
            child: child,
          ),
        ],
      ),
    );
  }
}
