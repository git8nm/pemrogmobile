import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_penyewa_controller.dart';

class LoginForm extends GetView<LoginPenyewaController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
