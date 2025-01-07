import 'package:flutter/material.dart';
import 'intro_screens.dart';

class LaunchingScreen extends StatelessWidget {
  const LaunchingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0754AA),
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const IntroScreens()),
          );
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/kyda_logo.png', // Match this exactly with your pubspec.yaml and file name
                width: 400,
                height: 400,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 90.0), // Adjust the top value as needed
                child: Image.asset(
                  'assets/images/sub1.png', // Ensure this matches the actual file name
                  width: 350,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
