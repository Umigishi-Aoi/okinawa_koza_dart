library keybord_input;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'intent/left_intent.dart';
import 'intent/right_intent.dart';

class KeybordInput extends StatelessWidget {
  const KeybordInput({
    super.key,
    required this.child,
    required this.invokeByleft,
    required this.invokeByRight,
  });

  final Widget child;
  final void Function() invokeByleft;
  final void Function() invokeByRight;

  Map<ShortcutActivator, Intent> get shortcutMap => <ShortcutActivator, Intent>{
        const SingleActivator(LogicalKeyboardKey.arrowLeft): const LeftIntent(),
        const SingleActivator(LogicalKeyboardKey.arrowRight):
            const RightIntent(),
      };

  Map<Type, Action<Intent>> get actionMap => <Type, Action<Intent>>{
        LeftIntent: CallbackAction<Intent>(
          onInvoke: (intent) => invokeByleft(),
        ),
        RightIntent: CallbackAction<Intent>(
          onInvoke: (intent) => invokeByRight(),
        ),
      };

  @override
  Widget build(BuildContext context) {
    return FocusableActionDetector(
      actions: actionMap,
      shortcuts: shortcutMap,
      child: child,
    );
  }
}
