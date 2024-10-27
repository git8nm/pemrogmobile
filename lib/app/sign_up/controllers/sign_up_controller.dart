import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../views/signup_verification_page.dart';

class SignUpController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signUp() {
    if (formKey.currentState!.validate()) {
      // Show confirmation dialog
      Get.defaultDialog(
        title: 'Verification Email Sent',
        content: Text(
            'We have sent a verification code to ${emailController.text}. Please check your email.'),
        confirm: ElevatedButton(
          onPressed: () {
            Get.back(); // Close the dialog
            Get.to(() => SignUpVerificationPage(email: emailController.text));
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
