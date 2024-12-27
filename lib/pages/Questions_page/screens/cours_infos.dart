import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/CustomButton.dart';

class CoursInfos extends StatelessWidget {
  const CoursInfos({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(8.0),
          width: Get.width,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                spreadRadius: 5,
                    blurRadius: 5,
                color: Colors.black12
              )
            ],
            color: Colors.white
          ),
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text("Mathematics - 2018",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),),
                            subtitle: Text("FET -  Faculty of engineering and technology"),
                            trailing: Icon(Icons.upload_outlined,size: 25.sp,),
                            contentPadding: EdgeInsets.only(right: 0),
                          ),
                          Row(
                            children: [
                              Icon(Icons.remove_red_eye,color: Colors.green,),
                              Text("120 views"),
                              SizedBox(width: 5.w,),
                              Icon(Icons.vertical_align_bottom,color: Colors.green,),
                              Text("200 Downloads"),
                            ],
                          ),
                          SizedBox(height: 2.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 60.w,
                                child: Stack(
                                  children: [
                                    Positioned(left: 1.2.w,child: Icon(Icons.check,color: Colors.green,)),
                                    Icon(Icons.check,color: Colors.green,),
                                    Positioned(left:10.w,child: Text("Questions Only")),
                                  ],
                                ),
                              ),
                              SizedBox(width: 2.w,),
                              Card(elevation: 0,
                                  color: Colors.redAccent.withOpacity(0.2),
                                  shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    borderSide: BorderSide.none
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text("Free",style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                                  ),
                              ),
                            ],
                          ),
                          Divider(),
                          Text("Solution provided by",style: TextStyle(fontWeight: FontWeight.w500),),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                            ),
                            title: Text("Njita Arnaud",style: TextStyle(fontWeight: FontWeight.w500),),
                            contentPadding: EdgeInsets.only(right: 0),
                          ),
                          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 15.sp),),
                          SizedBox(height: 7.h,),
                          Custombutton(
                            color: Colors.red,
                            text: Text("Download",style: TextStyle(color: Colors.white,fontSize: 16.sp, fontWeight: FontWeight.w600),),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: Text("Cours Information",style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500,color: Colors.blueAccent),),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
