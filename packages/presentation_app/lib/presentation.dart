import 'package:flutter/material.dart';

import 'gen/fonts.gen.dart';
import 'pages/title_page.dart';

class Presentation extends StatelessWidget {
  const Presentation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: FontFamily.mplus1,
        textTheme:
            const TextTheme(headlineLarge: TextStyle(color: Colors.black)),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.macOS: ZoomPageTransitionsBuilder(
              allowSnapshotting: false,
              allowEnterRouteSnapshotting: false,
            ),
          },
        ),
      ),
      home: const TitlePage(),
    );
  }
}
