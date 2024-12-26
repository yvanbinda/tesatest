import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'index_page/index.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          Index(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,size: 30.sp,), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.notes,size: 30.sp,), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.school,size: 30.sp,), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.save_alt_outlined,size: 30.sp,), label: 'Home'),
        ],
      ),
    );
  }
}
