import 'package:get/get.dart';

class AddUserController extends DisposableInterface {
  String _username = "";
  String _nickname = "";
  String _number = "";

  final RxString errorMessageUser = "".obs;
  final RxString errorMessageNick = "".obs;
  final RxString errorMessageNumber = "".obs;

  void setUsername(String username) {
    _username = username;
  }

  void setNickname(String nickname) {
    _nickname = nickname;
  }

  void setNumber(String number) {
    _number = number;
  }

  void validateUsername() {
    if (_username.isEmpty) {
      errorMessageUser.value = "Please enter something";
    } else if (_username.length < 2) {
      errorMessageUser.value =
          "Your username need to be at least 2 characters long";
    } else if (_username.length > 45) {
      errorMessageUser.value =
          "Your username need to be at maximum 45 characters long";
    } else {
      errorMessageUser.value = "";
    }
  }

  void validateNickname() {
    if (_nickname.length > 14) {
      errorMessageNick.value =
          "Your username need to be at maximum 14 characters long";
    } else {
      errorMessageNick.value = "";
    }
  }

  void validateNumber() {
    if (_number.isEmpty) {
      errorMessageNumber.value = "Please enter something";
    } else if (_number.length != 15) {
      errorMessageNumber.value = "Your number is Incomplete";
    } else {
      errorMessageNumber.value = "";
    }
  }

  void goBack() {
    Get.back();
  }
}
