import 'package:flutter/material.dart';

import 'base/base_page.dart';
import 'demo_page.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      nextPage: const DemoPage(),
      child: Container(),
    );
  }
}
