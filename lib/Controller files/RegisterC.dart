import 'package:get/get.dart';
import '../Design files/Landing.dart';

class RegisterC {
  static void OnRegister(String fName, String lName, String email, String pass){
    print(email + " " + pass);
    if (GetUtils.isEmail(email) && pass.length >= 6 && fName.isNotEmpty && fName.isNotEmpty){
      Get.to(Landing());
    }
  }
}
