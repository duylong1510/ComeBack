import 'dart:async';

import 'package:tren_boong_app/domain/validators/validations.dart';

class SignInBloc {
  StreamController _phoneController = new StreamController();
  Stream get phoneStream => _phoneController.stream;
 
  bool isValidinfo(String phone) {
    if (Validations.isValidPhoneNumber(phone)) {
      _phoneController.sink.addError("số điện thoại  không hợp lệ");
      return false;
    }
    _phoneController.add("Done");
    return true;
  }

  void disponse() {
    _phoneController.close();
  }
}
