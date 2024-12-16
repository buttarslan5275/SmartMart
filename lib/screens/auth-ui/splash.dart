import 'dart:async';
import 'package:ecommerce/screens/auth-ui/welcomeScreen.dart';
import 'package:ecommerce/screens/user-panel/main%20screen.dart';
import 'package:ecommerce/utils/app-constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6), () {
      print("Navigating to MainScreen");
      Get.offAll(() => Welcomescreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Appconstants.appMainColor,
          appBar: AppBar(
            backgroundColor: Appconstants.appMainColor,
            elevation: 0,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: constraints.maxWidth * 0.96,
                  child: Lottie.asset(
                    'Assets/Images/splash1.json',
                    width: constraints.maxWidth * 0.9,
                    height: constraints.maxHeight * 0.4,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: constraints.maxHeight * 0.26,
                child: Text(
                  Appconstants.apPoweredBy,
                  style: TextStyle(
                    color: Appconstants.appTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
