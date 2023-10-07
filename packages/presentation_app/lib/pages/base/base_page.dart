import 'package:flutter/material.dart';
import 'package:keybord_input/keybord_input.dart';

import 'background.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    this.isInitial,
    required this.child,
    required this.nextPage,
    super.key,
  });

  final bool? isInitial;
  final Widget child;
  final Widget nextPage;

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return KeybordInput(
      invokeByRight: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => nextPage,
        ),
      ),
      invokeByleft:
          isInitial ?? false ? () {} : () => Navigator.of(context).pop(),
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
