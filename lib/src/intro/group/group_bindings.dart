import 'package:get/get.dart';
import 'package:whatsup/src/intro/group/group_controller.dart';

class GroupBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GroupController>(() => GroupController());
  }
}
