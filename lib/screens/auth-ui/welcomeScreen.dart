import 'package:ecommerce/screens/auth-ui/sign-in-screen.dart';
import 'package:ecommerce/utils/app-constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:lottie/lottie.dart';

class Welcomescreen extends StatefulWidget {
  const Welcomescreen({super.key});

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints) {
        return Scaffold(
          body: Column(
            children: [
              Container(
                color: Appconstants.appMainColor,
                height: constraints.maxHeight*0.45,
                child: Lottie.asset('Assets/Images/splash1.json'),
              ),

              SizedBox(
                height: constraints.maxHeight*0.09,
              ),
              Container(
                child: Text(
                  'Happy Shopping',
                  style: TextStyle(
                      color: Appconstants.appMainColor,
                      fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,

                ),
              ),

              SizedBox(
                height: constraints.maxHeight*0.09,
              ),
              Material(
                child: Container(
                  width: constraints.maxWidth*0.85,
                  height: constraints.maxHeight*0.09,



                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Appconstants.appMainColor
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    label: Text('Sign in with google', style: TextStyle(
                      color: Appconstants.appTextColor,
                    ),),
                    icon: Image.asset(
                      'Assets/Images/googleicon.png', width: Get.width / 12,
                      height:constraints.maxHeight*0.09,
                    ),
                  ),
                ),
              ),


              SizedBox(
                height: constraints.maxHeight*0.09,
              ),
              Material(
                child: Container(
                  width: constraints.maxWidth*0.85,
                  height: constraints.maxHeight*0.09,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Appconstants.appMainColor
                  ),
                  child: TextButton.icon(
                    onPressed: () {
                      Get.offAll(()=>sign_in_screen());
                    },
                    label: Text('Sign in with email', style: TextStyle(
                      color: Appconstants.appTextColor,
                    ),),
                    icon: Icon(
                      Icons.email, color: Appconstants.appTextColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }
    );
  }
}
