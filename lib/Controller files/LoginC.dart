import 'package:get/get.dart';
import '../Design files/Landing.dart';

class LoginC {
  static void OnLogin(String email, String pass){
    print(email + " " + pass);
    if (GetUtils.isEmail(email) && pass.length >= 6){
      Get.to(Landing());
    }
  }
}
