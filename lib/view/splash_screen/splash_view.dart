import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/res/assets/image_assets.dart';
import 'package:newsapp/res/routes/routes_name.dart';
import 'package:newsapp/view/home/home_view.dart';
import 'package:newsapp/view/user_name/user_name_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigate();

    // Navigate after 3 seconds
    Timer(const Duration(seconds: 3), () {
      //Get.off(() => (RouteName.userNameScreen));
      Get.toNamed(RouteName.userNameScreen);
    });
  }

  Future<void> _navigate() async {
    await Future.delayed(const Duration(seconds: 3));

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userName = prefs.getString('userName');

    if (userName == null || userName.isEmpty) {
      // first time → go to UserNameView
      //Get.off(() => (RouteName.userNameScreen));
      Get.offAllNamed(RouteName.userNameScreen);
    } else {
      // already saved → go to HomeView
      //Get.off(() => (RouteName.homePage));
      Get.offAllNamed(RouteName.homePage);
      print("✅ Saved User Name: $userName");
    }
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
              "NewsNest",
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
