import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  var isPasswordHidden = true.obs;

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }
}
