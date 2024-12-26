import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/CustomButton.dart';
import '../widgets/CustomTextfield.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                        child: Text("Sign Up", style: TextStyle(color: Colors.white,fontSize: 20.sp, fontWeight: FontWeight.w600),))
                  ]
              ),
            ),
            SizedBox(height: 4.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                children: [
                  CustomTextfield(
                    hintText: 'Full name',
                    prefixIcon: Icon(Icons.person_search_rounded),
                  ),
                  CustomTextfield(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.mail_outline,),
                  ),
                  CustomTextfield(
                    hintText: 'Phone number',
                    prefixIcon: Icon(Icons.call_outlined),
                  ),
                  CustomTextfield(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),
                  ),
                  SizedBox(height: 2.h),
                  Custombutton(
                    color: Colors.red,
                    text: Text('Sign Up',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17.sp),),
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
                  Custombutton(
                    color: Colors.grey.withOpacity(0.3),
                    text: Text('Sign up width Google',style: TextStyle( fontWeight: FontWeight.w600, fontSize: 17.sp),),
                  ),
                  SizedBox(height: 2.h),
                  Custombutton(
                    color: Colors.grey.withOpacity(0.3),
                    text: Text('Continue as Guest',style: TextStyle( fontWeight: FontWeight.w600, fontSize: 17.sp),),
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text("Already have an account? ", style: TextStyle(fontSize: 17.sp),),
                          InkWell(
                              onTap: () {
                                print("_____Login__________");
                                Get.to(LoginPage());
                              },
                              child: Text("Log in", style: TextStyle(fontSize: 17.sp, color: Colors.red, fontWeight: FontWeight.w600),)),
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
