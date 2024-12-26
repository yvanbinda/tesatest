import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:test_app/Authentication/signup.dart';

import '../pages/homePage.dart';
import '../widgets/CustomButton.dart';
import '../widgets/CustomTextfield.dart';
import 'forgotpassword.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isActive = false;

  void toggle() {
    setState(() {
      isActive = !isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color:Colors.red,
              height: 20.h,
              width: Get.width,
              child: Stack(
                  children: [
                    Positioned(
                      bottom: 8.h,
                        left: 4.w,
                        child: Text("Log In", style: TextStyle(color: Colors.white,fontSize: 20.sp, fontWeight: FontWeight.w600),))
                  ]
              ),
            ),
            SizedBox(height: 4.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                children: [
                  CustomTextfield(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.mail_outline,),
                  ),
                  CustomTextfield(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: toggle,
                              child: Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: isActive ? Colors.red : Colors.grey,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: AnimatedAlign(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                  alignment: isActive ? Alignment.centerRight : Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 2.w,),
                            Text("Remember me", style: TextStyle(fontSize: 16.sp,)),
                          ],
                        ),
                        InkWell(
                            onTap: () {
                              print("_____sign up__________");
                              Get.to(ForgotPassword());
                            },
                            child: Text("Forgot password?", style: TextStyle(fontSize: 17.sp, color: Colors.red, fontWeight: FontWeight.w600),)),
                      ],
                    ),
                  ),
                  Custombutton(
                    color: Colors.red,
                    text: Text('Log In',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17.sp),),
                    onTap: () {
                      Get.to(Homepage());
                    },
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Divider(height: 4.h, thickness: 2,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("or"),
                      ),
                      Expanded(child: Divider(height: 4.h, thickness: 2,)),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Custombutton(
                    color: Colors.grey.withOpacity(0.3),
                    text: Text('Sign up width Google',style: TextStyle( fontWeight: FontWeight.w600, fontSize: 17.sp),),
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text("Don't have an account yet? ", style: TextStyle(fontSize: 17.sp),),
                          InkWell(
                            onTap: () {
                              print("_____sign up__________");
                              Get.to(Signup());
                            },
                              child: Text("Sign Up", style: TextStyle(fontSize: 17.sp, color: Colors.red, fontWeight: FontWeight.w600),)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
