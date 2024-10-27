import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'password_changed_success_page.dart';
// reset pass
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

class NewPasswordPage extends GetView<NewPasswordController> {
  final String email;

  NewPasswordPage({Key? key, required this.email}) : super(key: key) {
    Get.put(NewPasswordController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: Text('New Password', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create a new password for',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                email,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 24),
              Text('New Password'),
              TextFormField(
                controller: controller.newPasswordController,
                decoration: InputDecoration(
                  hintText: 'Enter new password',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a new password';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters long';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              Text('Confirm New Password'),
              TextFormField(
                controller: controller.confirmPasswordController,
                decoration: InputDecoration(
                  hintText: 'Confirm new password',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your new password';
                  }
                  if (value != controller.newPasswordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: controller.resetPassword,
                  child: Text('Reset Password'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
