import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/res/assets/image_assets.dart';
import 'package:newsapp/view/home/home_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Navigate after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Get.off(() => HomeView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: [
            Image.asset(
              ImageAssets.splashScreen,
              height: 200, 
              width: 200,  
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            const Text(
              "News App",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
