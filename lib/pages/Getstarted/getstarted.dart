import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Authentication/login.dart';
import '../../Authentication/signup.dart';
import '../../widgets/CustomButton.dart';

class Getstarted extends StatefulWidget {
  const Getstarted({super.key});

  @override
  State<Getstarted> createState() => _GetstartedState();
}

class _GetstartedState extends State<Getstarted> {
  static final List<Map<String, String>> items = [
    {
      'image': 'assets/img.png',
      'title': 'Pass questions Solutions and quizzes',
      'subtitle': 'Get access to past questions solutions and quizzes'
    },
    {
      'image': 'assets/img_1.png',
      'title': 'Career Orientation',
      'subtitle': 'Explore career options with detailed info on fields, job prospects, and qualifications to help you decide.'
    },
    {
      'image': 'assets/img_2.png',
      'title': 'Professional schools, and Universities',
      'subtitle': 'Get access to Past questions Solutions and quizzes'
    },
  ];

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 8),
                      child: _pageController.page!.round() <= 1
                          ? GestureDetector(
                              onTap: () {
                                print("____________Skip Pressed_____________");
                                Get.to(LoginPage());
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("Skip", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),),
                                  SizedBox(width: 1.w),
                                  Icon(Icons.arrow_forward_ios, size: 17.sp,)
                                ],
                              ),
                            )
                          :null,
                    ),
                    Container(
                      height: 40.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(items[index]['image']!)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60.0,vertical: 8.0),
                      child: Column(
                        children: [
                          Text(items[index]['title']!, style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),),
                          SizedBox(height: 1.h),
                          Text(items[index]['subtitle']!, style: TextStyle(fontSize: 16.sp)),
                        ],
                      ),
                    ),
                  ],
                );
              },
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  _pageController.animateToPage(value, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
                });
              },
            ),
          ),
      
          // Dot Indicator
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(items.length, (index) => DotIndicator(index: index )),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
        child: SizedBox(
          height: 6.h,
          child: Custombutton(
            color: Colors.red,
            icon: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16.sp,),
            text: Text('Next', style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w500),),
            onTap: () {
              print("__________object__________");
              if(_pageController.page != 2){
                _pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.ease);
              }
              else {
                Get.to(Signup());
              }
            },
          ),
        ),
      ),
    );
  }

  // Dot Indicator method
  Widget DotIndicator({required int index}) {
    return Container(
      width: 1.5.h,
      height: 1.5.h,
      margin: EdgeInsets.symmetric(horizontal: 0.5.h),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        //color: _pageController.page?.round() == index ? Colors.red : Colors.grey,
      ),
    );
  }
}
