import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller files/LoginC.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    var c = Get.put(LoginC());

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
                  "Log in to your account",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 60),
              TextField(
                controller: Get.find<LoginC>().email,
                decoration: InputDecoration(
                  hintText: "Enter your email"
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: Get.find<LoginC>().pass,
                decoration: InputDecoration(
                    hintText: "Enter your password"
                ),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                  onPressed: (){
                    c.OnLogin();
                  }, 
                  child: Text("Log in")
              ),
            ],
          ),
        ));
  }
}
