import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../modules/dashboard/controllers/dashboard_controller.dart';
import '../theme/app_colors.dart';
import 'custom_indicator.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DashboardController>();
    final screenWidth = MediaQuery.of(context).size.width;

    return Obx(
      () => Container(
        height: 70.h,
        decoration: const BoxDecoration(
          color: AppColors.background,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomIndicator(
              position:
                  (screenWidth / controller.navItems.length) *
                      controller.pageIndex.value +
                  ((screenWidth / controller.navItems.length) / 2 - 15.w),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(controller.navItems.length, (index) {
                final item = controller.navItems[index];
                final isActive = controller.pageIndex.value == index;
                final iconColor = isActive
                    ? AppColors.primary
                    : AppColors.inactive;

                return GestureDetector(
                  onTap: () => controller.changePage(index),
                  behavior: HitTestBehavior.translucent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        item["icon"]!,
                        width: 20.w,
                        height: 20.w,
                        colorFilter: ColorFilter.mode(
                          iconColor,
                          BlendMode.srcIn,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        item["label"]!,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: isActive
                              ? FontWeight.w600
                              : FontWeight.w400,
                          color: iconColor,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
