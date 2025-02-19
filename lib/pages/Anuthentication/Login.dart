import 'package:flutter/material.dart';
import 'package:kyda/utils/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          // Image at the top
          Container(
            height: MediaQuery.of(context).size.height * 0.43,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "lib/assets/Orange Blue Professional Minimal Brand Logo 1.png"),
                fit: BoxFit.contain,
              ),
            ),
          ),
          const Text(
            "Let’s you in",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.text,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
           const SizedBox(height: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Handle Facebook login
                          },
                          child: Image.asset(
                            'lib/assets/cbcb.png',
                            height: 55,
                            width: 55,
                          ),
                        ),
                        const SizedBox(height: 10),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Handle Google login
                              },
                              child: Image.asset(
                                'lib/assets/chdhhchdc.png',
                                height: 55,
                                width: 55,
                              ),
                            ),
                            SizedBox(width: 4,),
                            Text("Continue with google")
                          ],
                        ),
                      ],
                    ),
          
          const SizedBox(height: 10),
          const Text(
            "( Or )",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10),
         
        ],
      ),
    );
  }
}
