import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:test_app/Authentication/signup.dart';

import '../widgets/CustomButton.dart';
import '../widgets/CustomTextfield.dart';
import 'code_verification.dart';
import 'reset_confirm.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {

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
                        child: Text("Reset Password", style: TextStyle(color: Colors.white,fontSize: 20.sp, fontWeight: FontWeight.w600),)
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
                  Text('Make sure your new password is different from'
                      'the previously used old one',style: TextStyle(fontSize: 16.sp),),
                  SizedBox(height: 2.h),
                  CustomTextfield(
                    hintText:  'Enter new password',
                    prefixIcon: Icon(Icons.lock, color: Colors.grey,),
                    suffixIcon: Icon(Icons.remove_red_eye, color: Colors.grey,),
                  ),
                  CustomTextfield(
                    hintText:  'Confirm new password',
                    prefixIcon: Icon(Icons.lock, color: Colors.grey,),
                    suffixIcon: Icon(Icons.remove_red_eye, color: Colors.grey,),
                  ),
                  SizedBox(height: 4.h),
                  Custombutton(
                    color: Colors.red,
                    text: Text('Reset password',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17.sp),),
                    onTap: () {
                      Get.to(ResetConfirm());
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
