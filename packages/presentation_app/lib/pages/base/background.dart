import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.blueAccent[100],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(deviceHeight * 0.05),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight,
                      colors: [
                        Color(0xFFC7FFF7),
                        Color(0xFF9BE6DB),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
