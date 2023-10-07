import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:keybord_input/keybord_input.dart';

import 'background.dart';

class BasePage extends StatelessWidget {
  const BasePage({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return KeybordInput(
      invokeByRight: () => log('Right'),
      invokeByleft: () => log('Left'),
      child: Scaffold(
        body: Stack(
          children: [
            const Background(),
            Padding(
              padding: EdgeInsets.all(deviceHeight * 0.05),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
