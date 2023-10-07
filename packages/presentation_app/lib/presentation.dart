import 'package:flutter/material.dart';

import 'gen/fonts.gen.dart';
import 'pages/title_page.dart';

class Presentation extends StatelessWidget {
  const Presentation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: FontFamily.mplus1),
      home: const TitlePage(),
    );
  }
}
