import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../views/new_password_page.dart';

class ResetPasswordController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void sendVerificationCode() {
    if (formKey.currentState!.validate()) {
      // In a real app, you would send the verification code here
      Get.defaultDialog(
        title: 'Verification Code Sent',
        content: Text(
            'We have sent a verification code to ${emailController.text}. Please check your email.'),
        confirm: ElevatedButton(
          onPressed: () {
            Get.back();
            Get.to(() => NewPasswordPage(email: emailController.text));
          },
          child: Text('OK'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
        ),
      );
    }
  }
}
