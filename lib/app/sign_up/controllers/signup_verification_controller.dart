import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../login_page/views/login_page.dart';

class SignUpVerificationController extends GetxController {
  final String email;
  final List<TextEditingController> codeControllers =
      List.generate(6, (index) => TextEditingController());

  SignUpVerificationController(this.email);

  void verifyCode() {
    String code = codeControllers.map((controller) => controller.text).join();
    if (code.length == 6) {
      // In a real app, you would verify the code with your backend here
      // For now, we'll just navigate to the LoginPage
      Get.offAll(() => LoginPage());
    } else {
      Get.snackbar('Error', 'Please enter a valid 6-digit code');
    }
  }
}
