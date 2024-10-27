import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_screen.dart';
//main
void main() {
  runApp(
    GetMaterialApp(
      home: SplashScreen(),
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      defaultTransition: Transition.fade,
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
    );
  }
}