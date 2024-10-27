import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';
import 'dart:io' show Platform;

class WhatsAppService {
  static void openWhatsAppChat(String phoneNumber) async {
    // Remove any non-digit characters from the phone number
    phoneNumber = phoneNumber.replaceAll(RegExp(r'[^\d]+'), '');

    // Construct the WhatsApp URL
    Uri whatsappUrl;
    if (Platform.isAndroid) {
      whatsappUrl = Uri.parse("whatsapp://send?phone=$phoneNumber");
    } else {
      whatsappUrl = Uri.parse('https://wa.me/$phoneNumber');
    }

    try {
      if (await canLaunchUrl(whatsappUrl)) {
        await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
      } else {
        Get.snackbar('Error', 'WhatsApp is not installed on the device');
      }
    } catch (e) {
      Get.snackbar('Error', 'Could not open WhatsApp: $e');
    }
  }
}
