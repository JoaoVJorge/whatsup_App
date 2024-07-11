import 'package:get/get.dart';
import 'package:whatsup/src/splash/splash_controller.dart';

class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());
  }
}
