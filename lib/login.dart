import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          Image.asset(
            'assets/images/nameLogo.png',
            height: 400,
          ),

          const Text(
            "Let's Sign In.!",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF202244),
            ),
          ),

          const Text(
            "Login to Your Account to Continue your Courses",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF545454),
            ),
          ),

        ],
      ),
    );
  }
}
