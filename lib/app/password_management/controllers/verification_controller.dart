import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../views/reset_password_page.dart';

class VerificationController extends GetxController {
  final String email;
  final List<TextEditingController> codeControllers =
      List.generate(6, (index) => TextEditingController());

  VerificationController(this.email);

  void verifyCode() {
    String code = codeControllers.map((controller) => controller.text).join();
    if (code.length == 6) {
      // In a real app, you would verify the code with your backend here
      // For now, we'll just navigate to the ResetPasswordPage
      Get.off(() => ResetPasswordPage());
    } else {
      Get.snackbar('Error', 'Please enter a valid 6-digit code');
    }
  }
}
