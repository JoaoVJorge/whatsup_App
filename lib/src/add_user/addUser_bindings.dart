import 'package:get/get.dart';
import 'package:whatsup/src/add_user/addUser_controller.dart';

class AddUserBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddUserController>(() => AddUserController());
  }
}
