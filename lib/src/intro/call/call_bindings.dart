import 'package:get/get.dart';
import 'package:whatsup/src/intro/call/call_controller.dart';

class CallBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CallController>(() => CallController());
  }
}
