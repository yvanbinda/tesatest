import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 15),
      child: Container(
        height: 25.h,
        width: 70.w,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 0.8,
              blurRadius: 8.0,
              offset: Offset(0,5),
            )
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.hardEdge,
        child: Stack(
          children: [
            Container(
              height: 18.h,
              child: Image.asset("assets/img_3.png",fit: BoxFit.cover,),
            ),
            Positioned(
              left: 2.w,
              bottom: 8.h,
              child: Row(
                children: [
                  Icon(Icons.location_on_rounded, color: Colors.white,),
                  SizedBox(width:  1.w),
                  Text("Buea",style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Positioned(
              right: 3.w,
              left: 3.w,
              bottom: 1.h,
                child: Text("FET - Faculty of Engineering and Technology", style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),),
            )
          ],
        ),
      ),
    );
  }
}
