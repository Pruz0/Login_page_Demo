import 'package:flutter/material.dart';
import '../Controller files/RegisterC.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController fName = TextEditingController();
    TextEditingController lName = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();
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
                controller: fName,
                decoration: InputDecoration(
                    hintText: "Enter your first name"
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: lName,
                decoration: InputDecoration(
                    hintText: "Enter your last name"
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: email,
                decoration: InputDecoration(
                    hintText: "Enter your email"
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: pass,
                decoration: InputDecoration(
                    hintText: "Enter your password"
                ),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                  onPressed: (){
                    RegisterC.OnRegister(fName.text, lName.text, email.text, pass.text);
                  },
                  child: Text("Log in")
              ),
            ],
          ),
        ));
  }
}
