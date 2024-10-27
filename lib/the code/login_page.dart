import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_penyewa.dart'; // Import the new file we'll create
import 'whatsapp_service.dart'; // Import the WhatsAppService

// login page
class LoginPageController extends GetxController {
  void navigateToLoginPenyewa() {
    Get.to(() => LoginPenyewa());
  }

  // Add a method to open WhatsApp chat
  void openWhatsAppSupport() {
    const String supportPhoneNumber =
        '+6282172791631'; // Replace with your support number
    WhatsAppService.openWhatsAppChat(supportPhoneNumber);
  }
}

class LoginPage extends StatelessWidget {
  final LoginPageController controller = Get.put(LoginPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.black),
          onPressed: () => Get.back(), // Changed to Get.back()
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter Radar Kos',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Login sebagai',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 24),
            Card(
              child: ListTile(
                leading: Icon(Icons.info_outline, color: Colors.green),
                title: Text('Penyewa'),
                onTap: controller.navigateToLoginPenyewa,
              ),
            ),
            SizedBox(height: 24),
            Center(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(text: 'Need Help? '),
                    WidgetSpan(
                      child: GestureDetector(
                        onTap: controller.openWhatsAppSupport,
                        child: Text(
                          'Click Here',
                          style: TextStyle(
                            color: Colors.green,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
