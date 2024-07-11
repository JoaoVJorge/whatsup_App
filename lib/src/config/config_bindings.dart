import 'package:get/get.dart';
import 'package:whatsup/src/config/config_controller.dart';

class ConfigBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfigController>(() => ConfigController());
  }
}
