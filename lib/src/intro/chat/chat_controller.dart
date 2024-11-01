import 'package:get/get.dart';
import 'package:whatsup/app/app_routes.dart';

class ChatController extends DisposableInterface {
  Future<void> goAddUser() async {
    Get.toNamed(AppRoutes.adduser);
  }

  Future<void> goConversation() async {
    Get.toNamed(AppRoutes.conversation);
  }
}
