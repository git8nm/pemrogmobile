import 'package:get/get.dart';
import '../controllers/sign_up_controller.dart';
import '../controllers/signup_verification_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(() => SignUpController());
    Get.lazyPut<SignUpVerificationController>(
        () => SignUpVerificationController(''));
  }
}
