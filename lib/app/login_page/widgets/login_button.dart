import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_penyewa_controller.dart';

class LoginButton extends GetView<LoginPenyewaController> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
    );
  }
}
