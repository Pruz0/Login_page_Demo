import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Design files/Landing.dart';

class LoginC extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

    void OnLogin(){
    if (GetUtils.isEmail(email.text) && pass.text.length >= 6){
      Get.to(Landing());
    }
  }
}
