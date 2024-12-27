import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'pastQuestions.dart';

class ConcoursInfos extends StatelessWidget {
  const ConcoursInfos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon:  Icon(Icons.arrow_back_ios)),
        title: Text("Back"),
        titleSpacing: -10,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.red,
                height: 25.h,
                child: Image.asset("assets/img_3.png",fit: BoxFit.cover,),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 3.h,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.red),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                        child: Text("Engineering",style: TextStyle(color: Colors.red),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text("Faculty of Engineering and Technology FET", style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500),),
                    ),
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                        "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                        , style: TextStyle(fontSize: 15.sp),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text("Title", style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500),),
                    ),
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                        "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                      , style: TextStyle(fontSize: 15.sp),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text("Title", style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500),),
                    ),
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                        "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                      , style: TextStyle(fontSize: 15.sp),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Divider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text("Past Questions", style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500),),
                    ),
                    PastQuestions(),
                    PastQuestions(),
                    PastQuestions(),
                    PastQuestions(),
                    PastQuestions(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                            "View more",
                            style: TextStyle(color:Colors.red, fontSize: 18.sp,fontWeight: FontWeight.w500,decoration: TextDecoration.underline,decorationColor: Colors.red),)),
                    ),
                    SizedBox(height: 6.h,)
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
