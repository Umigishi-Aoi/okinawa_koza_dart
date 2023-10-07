import 'package:flutter/material.dart';
import 'package:keybord_input/keybord_input.dart';

import 'background.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    required this.child,
    required this.invokeByRight,
    required this.invokeByLeft,
    super.key,
  });

  final Widget child;
  final void Function() invokeByRight;
  final void Function() invokeByLeft;

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return KeybordInput(
      invokeByRight: invokeByRight,
      invokeByleft: invokeByLeft,
      child: Scaffold(
        body: Stack(
          children: [
            const Background(),
            Padding(
              padding: EdgeInsets.all(deviceHeight * 0.07),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
