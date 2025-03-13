import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'signup_page.dart';
//import 'login.dart';
//import 'your_profile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCu3iNm4MMqWvq1y0EU7jtzgyM6pYfwAXY",
            authDomain: "kyda-edu.firebaseapp.com",
            projectId: "kyda-edu",
            storageBucket: "kyda-edu.firebasestorage.app",
            messagingSenderId: "735082912671",
            appId: "1:735082912671:web:80583fa5d3b605fa67fbaa",
            measurementId: "G-VD3ZTKQKQ7"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
    );
  }
}
