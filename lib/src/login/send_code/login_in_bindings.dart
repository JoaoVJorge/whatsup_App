import 'package:get/get.dart';
import 'package:whatsup/src/login/send_code/login_in_controller.dart';

class LoginInBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginInController>(() => LoginInController());
  }
}
