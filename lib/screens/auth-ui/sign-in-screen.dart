import 'package:ecommerce/screens/auth-ui/splash.dart';
import 'package:ecommerce/utils/app-constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class sign_in_screen extends StatefulWidget {
  const sign_in_screen({super.key});

  @override
  State<sign_in_screen> createState() => _sign_in_screenState();
}

class _sign_in_screenState extends State<sign_in_screen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return KeyboardVisibilityBuilder(builder: (context,isKeyboardVisible) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  isKeyboardVisible
                      ?SizedBox.shrink():
                  Container(
                    color: Appconstants.appMainColor,
                    height: constraints.maxHeight * 0.32,

                    child: Lottie.asset("Assets/Images/splash1.json"),
                  ),
                  SizedBox(
                    height: constraints.maxHeight *
                        0.08, // 10% of the parent height
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),

                    child: TextField(
                      decoration: InputDecoration(
                          label: Text(
                              'Email'
                          ),
                          prefixIcon: Icon(Icons.mail),
                          border: OutlineInputBorder(
                            // borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(25),
                          )
                      ),
                    ),

                  ),

                  SizedBox(
                    height: constraints.maxHeight *
                        0.04, // 10% of the parent height
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text(
                            'Password'
                        ),
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          // borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),

                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {

                      },
                      child: Text('forget password?', style: TextStyle(
                        color: Appconstants.appMainColor,

                      ),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.05,
                  ),

                  Container(
                    width: constraints.maxWidth*0.7,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Appconstants.appMainColor,

                    ),
                    child: TextButton(
                      onPressed: (){

                      },
                      child: Text("SIGN IN",style: TextStyle(
                        color: Appconstants.appTextColor,
                      ),),
                    ),
                  ),

                  SizedBox(
                    height: constraints.maxHeight * 0.058,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                   Text("Don't have an account?",style: TextStyle(
                        color: Appconstants.appMainColor,
                      ),
                      ),
                      GestureDetector(
                        onTap: ()=>Get.offAll(()=>SplashScreen()),
                        child: Text("Sign Up",style: TextStyle(
                          color: Appconstants.appMainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),
                        ),
                      ),


                    ],
                  ),

                  SizedBox(
                    height: constraints.maxHeight * 0.058,
                  ),

                  Container(
                    width: constraints.maxWidth*0.7,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Appconstants.appMainColor,

                    ),
                    child: TextButton(
                      onPressed: (){

                      },
                      child: Text("Google Sign In",style: TextStyle(
                        color: Appconstants.appTextColor,
                      ),),
                    ),
                  ),

                ],
              ),
            ),
          );

        }
        );
      }
    );
  }
}
