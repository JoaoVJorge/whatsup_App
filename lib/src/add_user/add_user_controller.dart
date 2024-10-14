import 'package:get/get.dart';

class AddUserController extends DisposableInterface {
  void goBack() {
    Get.back();
  }

  String? validatorUser(value) {
    if (value == null || value.isEmpty) {
      return "Please enter something";
    } else if (value.length <= 2) {
      return "Your password need to be at least 2 chracters long";
    } else if (value.length > 12) {
      return "Your password need to be at maximum 12 chracters long";
    }
    return null;
  }
}
