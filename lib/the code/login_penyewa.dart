import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'sign_up_page.dart';
import 'reset_password_page.dart';

// login penyewa
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
    Get.to(() => SignUpPage());
  }

  void navigateToForgotPassword() {
    Get.to(() => ResetPasswordPage());
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

class LoginPenyewa extends StatelessWidget {
  final LoginPenyewaController controller = Get.put(LoginPenyewaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: Text('Login Penyewa', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton.icon(
              icon: Icon(Icons.g_mobiledata, color: Colors.green, size: 30),
              label: Text('Sign in with Google'),
              onPressed: () {
                // Implement Google Sign-In
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('or', style: TextStyle(color: Colors.grey)),
                ),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              controller: controller.emailController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email, color: Colors.green),
                hintText: 'example123@example.com',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 10),
            Obx(() => TextField(
                  controller: controller.passwordController,
                  obscureText: controller.obscurePassword.value,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.grey),
                    hintText: 'x x x x x x x x x x',
                    suffixIcon: IconButton(
                      icon: Icon(controller.obscurePassword.value
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: controller.toggleObscurePassword,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                )),
            Obx(() => Row(
                  children: [
                    Checkbox(
                      value: controller.rememberPassword.value,
                      onChanged: controller.toggleRememberPassword,
                      activeColor: Colors.green,
                    ),
                    Text('Remember Password'),
                  ],
                )),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Login'),
              onPressed: controller.login,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                TextButton(
                  child: Text('Sign up now',
                      style: TextStyle(color: Colors.green)),
                  onPressed: controller.navigateToSignUp,
                ),
              ],
            ),
            SizedBox(height: 10),
            Center(
              child: TextButton(
                child: Text('Forgot Password?',
                    style: TextStyle(color: Colors.green)),
                onPressed: controller.navigateToForgotPassword,
              ),
            ),
            TextButton(
              child: Text('Terms of Service',
                  style: TextStyle(color: Colors.green)),
              onPressed: controller.showTermsOfService,
            ),
            TextButton(
              child:
                  Text('Privacy Policy', style: TextStyle(color: Colors.green)),
              onPressed: controller.showPrivacyPolicy,
            ),
          ],
        ),
      ),
    );
  }
}
