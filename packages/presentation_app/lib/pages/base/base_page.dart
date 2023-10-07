import 'package:flutter/material.dart';
import 'package:keybord_input/keybord_input.dart';

import 'background.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    this.isInitial,
    required this.child,
    this.nextPage,
    super.key,
  });

  final bool? isInitial;
  final Widget child;
  final Widget? nextPage;

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return KeybordInput(
      invokeByRight: nextPage == null
          ? () {}
          : () => Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => nextPage!,
                  maintainState: false,
                  allowSnapshotting: false,
                  transitionDuration: Duration.zero,
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
