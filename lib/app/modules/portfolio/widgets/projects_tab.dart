import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/project_card.dart';
import '../../../data/constants.dart';
import '../../portfolio/controllers/portfolio_controller.dart';
import 'search_field.dart';

class ProjectsTab extends GetView<PortfolioController> {
  const ProjectsTab({super.key});

  @override
  Widget build(BuildContext context) {
    PortfolioController controller = Get.put(PortfolioController());
    return Stack(
      children: [
        SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchField(onChanged: controller.filterProjects),
              SizedBox(height: 16.h),
              Obx(
                () => ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.filteredProjects.length,
                  separatorBuilder: (_, __) => SizedBox(height: 12.h),
                  itemBuilder: (_, i) =>
                      ProjectCard(project: controller.filteredProjects[i]),
                ),
              ),
              SizedBox(height: 80.h),
            ],
          ),
        ),
        Positioned(
          bottom: 16.h,
          left: 0,
          right: 0,
          child: Center(
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
              ),
              icon: Icon(Icons.filter_list, color: Colors.white, size: 20.sp),
              label: Text(
                ConstantStrings.filterLabel,
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
