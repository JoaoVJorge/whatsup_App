import 'package:get/get.dart';
import 'package:whatsup/app/app_routes.dart';

class ConfigController extends DisposableInterface {
  void goBack() {
    Get.back();
  }

  void exit() {
    Get.toNamed(AppRoutes.login);
  }
}
