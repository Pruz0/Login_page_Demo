import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
          backgroundColor: Colors.deepOrangeAccent,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child : Text("Login/Registration successful!\nThis is the landing page")
        )
    );
  }
}

