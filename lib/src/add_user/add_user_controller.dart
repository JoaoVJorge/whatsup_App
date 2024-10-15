import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AddUserController extends DisposableInterface {
  void goBack() {
    Get.back();
  }

  Widget? validatorUser(value) {
    String user = value;

    if (user.isEmpty) {
      return const Text("Please enter something");
    } else if (user.length <= 2) {
      return const Text("Your password need to be at least 2 chracters long");
    } else if (user.length > 12) {
      return const Text(
          "Your password need to be at maximum 12 chracters long");
    }
    return null;
  }
}
