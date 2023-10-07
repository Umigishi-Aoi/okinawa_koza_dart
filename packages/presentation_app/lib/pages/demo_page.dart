import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
import 'base/base_page.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      child: Center(
        child: Assets.images.icon.image(),
      ),
    );
  }
}
