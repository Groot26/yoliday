import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/app_colors.dart';

class CustomIndicator extends StatelessWidget {
  final double position;

  const CustomIndicator({super.key, required this.position});

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeInOut,
      top: 0,
      left: position,
      child: Container(
        width: 30.w,
        height: 3.h,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(2.r),
        ),
      ),
    );
  }
}
