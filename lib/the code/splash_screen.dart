import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_page.dart'; // We'll create this file next
//splash screen
class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 3), () {
      Get.off(() => LoginPage());
    });
  }
}

class SplashScreen extends StatelessWidget {
  final SplashScreenController controller = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: Image.asset(
            'assets/images/R K, alphabet.png', // Make sure this matches your file name
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
