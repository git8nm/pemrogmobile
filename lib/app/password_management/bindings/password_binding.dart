import 'package:get/get.dart';
import '../controllers/new_password_controller.dart';
import '../controllers/reset_password_controller.dart';
import '../controllers/verification_controller.dart';

class PasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewPasswordController>(() => NewPasswordController());
    Get.lazyPut<ResetPasswordController>(() => ResetPasswordController());
    Get.lazyPut<VerificationController>(() => VerificationController(''));
  }
}
