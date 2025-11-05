import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../core/theme/app_colors.dart';
import '../../../data/constants.dart';
import '../controllers/portfolio_controller.dart';
import '../widgets/projects_tab.dart';

class PortfolioView extends GetView<PortfolioController> {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, __) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.background,
          title: Text(
            ConstantStrings.portfolioTitle,
            style: TextStyle(
              color: AppColors.textDark,
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
            ),
          ),
          actions: [
            _buildIcon('assets/icons/cart.svg'),
            _buildIcon('assets/icons/notification.svg'),
          ],
        ),
        body: DefaultTabController(
          length: 4,
          child: Column(
            children: [
              TabBar(
                labelColor: AppColors.primary,
                unselectedLabelColor: AppColors.textDark,
                labelStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
                dividerColor: AppColors.border,
                dividerHeight: 2.sp,
                indicatorColor: AppColors.primary,
                indicatorWeight: 2.h,
                indicatorSize: TabBarIndicatorSize.tab,
                padding: EdgeInsets.zero,
                indicatorPadding: EdgeInsets.zero,
                labelPadding: EdgeInsets.zero,
                tabs: ConstantStrings.tabs.map((t) => Tab(text: t)).toList(),
              ),
              Expanded(
                child: TabBarView(
                  children: const [
                    ProjectsTab(),
                    Center(child: Text('Saved')),
                    Center(child: Text('Shared')),
                    Center(child: Text('Achievement')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(String path) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: SvgPicture.asset(path, width: 20.w, height: 20.w),
    );
  }
}
