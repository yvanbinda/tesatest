import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../pages/homePage.dart';
import '../widgets/CustomButton.dart';
import '../widgets/CustomTextfield.dart';

class ResetConfirm extends StatelessWidget {
  const ResetConfirm({super.key});

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
                  ]
              ),
            ),
            SizedBox(height: 4.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                children: [
                  Icon(Icons.gpp_good_outlined, color: Colors.green, size: 50.sp,),
                  Text("Your password was reset \n            successfully",style: TextStyle(fontSize: 16.sp), ),
                  SizedBox(height: 8.h),
                  Custombutton(
                    color: Colors.red,
                    text: Text('Continue',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17.sp),),
                    onTap: () {
                      Get.to(Homepage());
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
