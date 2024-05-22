import 'Register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Assignment of Login-Registration"),
          backgroundColor: Colors.deepOrangeAccent,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                const Text(
                  "Hello there! Please choose your option.",
                  style: TextStyle(fontFamily: "Freeman", fontSize: 18),
                ),
                SizedBox(height: 250),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(const Login());
                    },
                    child: const Text("Login"),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(const Register());
                        },
                      child: const Text("Register new account"),
                    ))
              ],
            ),
          ),
        ));
  }
}
