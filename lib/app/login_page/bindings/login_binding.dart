import 'package:get/get.dart';
import '../controllers/login_page_controller.dart';
import '../controllers/login_penyewa_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginPageController>(() => LoginPageController());
    Get.lazyPut<LoginPenyewaController>(() => LoginPenyewaController());
  }
}
