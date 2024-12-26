import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Custombutton extends StatelessWidget {
  final Text text;
  final Color color;
  final Widget? icon;
  final void Function()? onTap;
  const Custombutton({
    super.key,
    required this.text,
    required this.color,
    this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 7.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text,
            if(icon != null) ...[
              SizedBox(width: 1.w),
              icon!,
            ]
          ],
        ),
      ),
    );

  }
}
