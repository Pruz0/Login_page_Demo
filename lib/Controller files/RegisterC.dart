import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Design files/Landing.dart';

class RegisterC extends GetxController {
  TextEditingController fName = TextEditingController();
  TextEditingController lName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  void OnRegister(){
    if (GetUtils.isEmail(email.text) && pass.text.length >= 6 && fName.text.isNotEmpty && lName.text.isNotEmpty){
      Get.to(Landing());
    }
  }
}
