import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blueGrey.shade50,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/eye.png",
              width: 200,
              height: 200,
            ),
            const Text(
              "Portfolio",
              style: TextStyle(fontSize: 36),
            ),
          ],
        )));
  }
}
