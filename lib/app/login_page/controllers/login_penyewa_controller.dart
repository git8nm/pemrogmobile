import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class LoginPenyewaController extends GetxController {
  var rememberPassword = false.obs;
  var obscurePassword = true.obs;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void toggleRememberPassword(bool? value) => rememberPassword.value = value!;
  void toggleObscurePassword() => obscurePassword.toggle();

  void login() {
    // Implement login logic here
    print('Login with: ${emailController.text}, ${passwordController.text}');
  }

  void navigateToSignUp() {
    Get.toNamed(Routes.SIGN_UP);
  }

  void navigateToForgotPassword() {
    Get.toNamed(Routes.RESET_PASSWORD);
  }

  void showTermsOfService() {
    // Implement this without WebView, e.g., navigate to a native page or open a URL
    print('Show Terms of Service');
  }

  void showPrivacyPolicy() {
    // Implement this without WebView, e.g., navigate to a native page or open a URL
    print('Show Privacy Policy');
  }
}
