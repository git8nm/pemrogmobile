import 'package:flutter/material.dart';

class SplashLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Image.asset(
        'assets/images/R K, alphabet.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
