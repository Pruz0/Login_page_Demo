import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller files/RegisterC.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    var c = Get.put(RegisterC());
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
          backgroundColor: Colors.deepOrangeAccent,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                "Register your account",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 60),
              TextField(
                controller: Get.find<RegisterC>().fName,
                decoration: InputDecoration(
                    hintText: "Enter your first name"
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: Get.find<RegisterC>().lName,
                decoration: InputDecoration(
                    hintText: "Enter your last name"
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: Get.find<RegisterC>().email,
                decoration: InputDecoration(
                    hintText: "Enter your email"
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: Get.find<RegisterC>().pass,
                decoration: InputDecoration(
                    hintText: "Enter your password"
                ),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                  onPressed: (){
                    c.OnRegister();
                  },
                  child: Text("Log in")
              ),
            ],
          ),
        ));
  }
}
