import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Custombox extends StatelessWidget {
  final Color color;
  final Widget icon;
  final String text;
  const Custombox({
    super.key,
    required this.color,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 10.h,
          width: 10.h,
          decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  width: 0.5.w,
                  color: color
              ),
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.2),
                blurRadius: 2,
                offset: Offset(0, 5),
                spreadRadius: 0.5,
              )
            ],
          ),
          child: icon,
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(text, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.sp),),
        ),
      ],
    );
  }
}
