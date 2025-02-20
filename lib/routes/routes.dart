
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kyda/routes/approutes.dart';
import 'package:kyda/screens/launching_screen.dart';



class TAppRoute {
  static final List<GetPage> pages = [
    GetPage(name: TRoutes.getstarted, page: () => const LaunchingScreen()),
        
  ];
}
