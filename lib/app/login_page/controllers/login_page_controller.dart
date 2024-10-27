import 'package:get/get.dart';
import '../../services/whatsapp_service.dart';

class LoginPageController extends GetxController {
  void navigateToLoginPenyewa() {
    Get.toNamed('/login-penyewa');
  }

  void openWhatsAppSupport() {
    const String supportPhoneNumber = '+6282172791631';
    WhatsAppService.openWhatsAppChat(supportPhoneNumber);
  }
}
