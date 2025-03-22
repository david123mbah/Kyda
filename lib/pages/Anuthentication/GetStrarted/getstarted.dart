import 'package:flutter/material.dart';
import 'package:kyda/utils/colors.dart';



class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.03,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("lib/assets/Orange Blue Professional Minimal Brand Logo 1.png"))
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}