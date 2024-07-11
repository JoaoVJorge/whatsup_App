import 'package:get/get.dart';
import 'package:whatsup/app/app_routes.dart';

class SplashController extends DisposableInterface {
  Future<void> goHome() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.toNamed(AppRoutes.login);
  }

  @override
  void onInit() {
    super.onInit();
    goHome();
  }
}
