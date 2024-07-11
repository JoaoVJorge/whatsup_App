import 'package:get/get.dart';
import 'package:whatsup/app/app_routes.dart';

class LoginController extends DisposableInterface {
  Future<void> goToLog() async {
    Get.toNamed(AppRoutes.home);
  }
}
