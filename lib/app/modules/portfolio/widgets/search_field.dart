import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_colors.dart';
import '../../../data/constants.dart';

class SearchField extends StatelessWidget {
  final Function(String) onChanged;

  const SearchField({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      style: TextStyle(fontSize: 14.sp),
      cursorColor: AppColors.textDark,
      
      decoration: InputDecoration(
        hintText: ConstantStrings.searchHint,
        hintStyle: TextStyle(fontSize: 14.sp, color: AppColors.textLight),
        filled: true,
        fillColor: Colors.white,
        suffixIcon: Container(
          margin: EdgeInsets.all(8.sp),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: AppColors.primary,
          ),
          child: Icon(Icons.search, color: Colors.white, size: 16.sp),
        ),
        contentPadding: EdgeInsets.all(12.sp),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
          borderSide: BorderSide(color: AppColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
          borderSide: BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
          borderSide: BorderSide(color: AppColors.primary),
        ),
      ),
    );
  }
}
