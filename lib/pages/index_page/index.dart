import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:test_app/widgets/customcard.dart';

import '../../widgets/customBox.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: ListTile(
                  title: Text("Hi Njita",style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),),
                  subtitle: Text("Glad to see you here!"),
                ),
              ),
              Container(
                height: 35.h,
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                  children: [
                    Custombox(
                      color: Colors.redAccent,
                      icon: Icon(Icons.send,size: 22.sp,color: Colors.redAccent,),
                      text: "Concours",
                    ),
                    Custombox(
                      color: Colors.blueAccent,
                      icon: Icon(Icons.notes,size: 22.sp,color: Colors.blueAccent,),
                      text: "Questions",
                    ),
                    Custombox(
                      color: Colors.orangeAccent,
                      icon: Icon(Icons.watch_later_outlined,size: 22.sp,color: Colors.orangeAccent,),
                      text: "Quiz",
                    ),
                    Custombox(
                      color: Colors.greenAccent,
                      icon: Icon(Icons.warehouse_outlined,size: 22.sp,color: Colors.greenAccent,),
                      text: "Universities",
                    ),
                    Custombox(
                      color: Colors.deepPurpleAccent,
                      icon: Icon(Icons.notes,size: 22.sp,color: Colors.deepPurpleAccent,),
                      text: "Tutorials",
                    ),
                    Custombox(
                      color: Colors.blueAccent,
                      icon: Icon(Icons.chat,size: 22.sp,color: Colors.blueAccent,),
                      text: "Help",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming concours",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),),
                    Text("See all",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp,color: Colors.red)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCard(),
                        CustomCard(),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Most popular universities",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),),
                    Text("See all",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp, color: Colors.red)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,bottom: 20.0),
                child: Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCard(),
                        CustomCard(),
                      ],
                    ),
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
