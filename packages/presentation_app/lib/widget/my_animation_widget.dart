import 'dart:math';

import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';

class MyAnimationWidget extends StatefulWidget {
  const MyAnimationWidget({super.key});

  @override
  State<MyAnimationWidget> createState() => _MyAnimationWidgetState();
}

class _MyAnimationWidgetState extends State<MyAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late TweenSequence<double> rotateTweenSequence;
  late Tween<double> forwardScaleTween;
  late Tween<double> backwardScaleTween;
  late Animation<double> rotateAnimation;
  late Animation<double> forwardScaleAnimation;
  late Animation<double> backwardScaleAnimation;

  @override
  void initState() {
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    rotateTweenSequence = TweenSequence<double>([
      for (int i = 0; i < 4; i++) ...[
        TweenSequenceItem(
          tween: Tween(
            begin: 0,
            end: pi * 1 / 8,
          ),
          weight: 1,
        ),
        TweenSequenceItem(
          tween: Tween(
            begin: pi * 1 / 8,
            end: 0,
          ),
          weight: 1,
        ),
        TweenSequenceItem(
          tween: Tween(
            begin: 0,
            end: -pi * 1 / 8,
          ),
          weight: 1,
        ),
        TweenSequenceItem(
          tween: Tween(
            begin: -pi * 1 / 8,
            end: 0,
          ),
          weight: 1,
        ),
      ],
    ]);

    forwardScaleTween = Tween(begin: 1, end: 1.3);
    backwardScaleTween = Tween(begin: 1.3, end: 1);

    rotateAnimation = CurvedAnimation(
      parent: controller,
      curve: Curves.ease,
    ).drive(rotateTweenSequence);

    forwardScaleAnimation =
        CurvedAnimation(parent: controller, curve: const Interval(0, 0.5))
            .drive(forwardScaleTween);

    backwardScaleAnimation =
        CurvedAnimation(parent: controller, curve: const Interval(0.5, 1))
            .drive(backwardScaleTween);

    controller
      ..forward()
      ..repeat();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (contex, _) {
        return Transform.scale(
          scale: forwardScaleAnimation.value,
          child: Transform.scale(
            scale: backwardScaleAnimation.value,
            child: Transform.rotate(
              angle: rotateAnimation.value,
              child: Assets.images.icon.image(),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
