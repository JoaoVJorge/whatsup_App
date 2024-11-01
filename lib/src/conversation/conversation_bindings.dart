import 'package:get/get.dart';
import 'package:whatsup/src/conversation/conversation_controller.dart';

class ConversationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConversationController>(() => ConversationController());
  }
}
