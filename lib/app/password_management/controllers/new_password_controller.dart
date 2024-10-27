import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../views/password_changed_success_page.dart';

class NewPasswordController extends GetxController {
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  void resetPassword() {
    if (formKey.currentState!.validate()) {
      if (newPasswordController.text == confirmPasswordController.text) {
        // In a real app, you would update the password in your backend here
        Get.off(() => PasswordChangedSuccessPage());
      } else {
        Get.snackbar('Error', 'Passwords do not match');
      }
    }
  }
}
