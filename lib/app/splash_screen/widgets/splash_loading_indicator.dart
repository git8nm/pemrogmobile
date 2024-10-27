import 'package:flutter/material.dart';

class SplashLoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
    );
  }
}
