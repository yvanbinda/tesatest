import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:test_app/Authentication/signup.dart';

import '../widgets/CustomButton.dart';
import '../widgets/CustomTextfield.dart';
import 'code_verification.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool isActive = false;
  bool isButtonOneActive = true;

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
                        left: 14.w,
                        child: Text("Forgot Password", style: TextStyle(color: Colors.white,fontSize: 20.sp, fontWeight: FontWeight.w600),)
                    ),
                    Positioned(
                      top: 7.h,
                      left: 4.w,
                      child: IconButton(
                        onPressed: () {
                          Get.back(); // Go back
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 22.sp,
                        ),
                      ),
                    ),
                  ]
              ),
            ),
            SizedBox(height: 4.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                children: [
                  Text('Select either or SMS to receive your'
                      'password reset verification code.',style: TextStyle(fontSize: 16.sp),),
                  SizedBox(height: 4.h),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 4.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: isButtonOneActive ? 1: 0,
                              backgroundColor: isButtonOneActive ? Colors.white : Colors.transparent,
                              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                print("___choosed____");
                                isButtonOneActive = true;
                              });
                            },
                            child: Row(
                              children: [
                                Icon(Icons.mail_outline,color: Colors.black.withOpacity(.5),),
                                SizedBox(width: 2.w,),
                                Text("Via Email"),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: isButtonOneActive ? 1: 0,
                              backgroundColor: isButtonOneActive ? Colors.transparent : Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                print("___choosed____");
                                isButtonOneActive =  false;
                              });
                            },
                            child: Row(
                              children: [
                                Icon(Icons.chat_outlined,color: Colors.black.withOpacity(.5),),
                                SizedBox(width: 2.w,),
                                Text("Via SMS"),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 2.h),
                  CustomTextfield(
                    hintText: isButtonOneActive? 'Email': 'phone number',
                    prefixIcon: isButtonOneActive? Icon(Icons.mail_outline,) : Icon(Icons.phone_outlined,),
                  ),
                  Custombutton(
                    color: Colors.red,
                    text: Text('Send verification code',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17.sp),),
                    onTap: () {
                      Get.to(CodeVerification());
                    },
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
