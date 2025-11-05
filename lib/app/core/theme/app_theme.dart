import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.gradientStart,
      surface: AppColors.background,
      onPrimary: Colors.white,
      onSecondary: AppColors.textDark,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.background,
      iconTheme: const IconThemeData(color: AppColors.textDark),
      titleTextStyle: TextStyle(
        color: AppColors.textDark,
        fontWeight: FontWeight.w600,
        fontSize: 18.sp,
      ),
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: AppColors.textDark, fontSize: 14.sp),
      bodySmall: TextStyle(color: AppColors.textLight, fontSize: 12.sp),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.primary,
      selectionColor: AppColors.primary,
      selectionHandleColor: AppColors.primary,
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
        borderRadius: BorderRadius.circular(14.r),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.border),
        borderRadius: BorderRadius.circular(14.r),
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.border),
        borderRadius: BorderRadius.circular(14.r),
      ),
    ),
    splashColor: AppColors.primary.withAlpha(30),
    highlightColor: AppColors.primary.withAlpha(25),
    focusColor: AppColors.primary.withAlpha(50),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.r),
        ),
      ),
    ),
  );
}
