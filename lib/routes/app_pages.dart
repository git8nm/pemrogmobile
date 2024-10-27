import 'package:get/get.dart';
import '../app/splash_screen/views/splash_screen.dart';
import '../app/login_page/views/login_page.dart';
import '../app/login_page/views/login_penyewa.dart';
import '../app/sign_up/views/sign_up_page.dart';
import '../app/password_management/views/reset_password_page.dart';

import '../app/splash_screen/bindings/splash_binding.dart';
import '../app/login_page/bindings/login_binding.dart';
import '../app/sign_up/bindings/sign_up_binding.dart';
import '../app/password_management/bindings/password_binding.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.LOGIN_PENYEWA,
      page: () => LoginPenyewa(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.SIGN_UP,
      page: () => SignUpPage(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: Routes.RESET_PASSWORD,
      page: () => ResetPasswordPage(),
      binding: PasswordBinding(),
    ),
  ];
}
