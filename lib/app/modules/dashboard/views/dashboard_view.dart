import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/modules/portfolio/views/portfolio_view.dart';

import '../../../core/widgets/custom_bottom_nav.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          Center(child: Text('Home')),
          PortfolioView(),
          Center(child: Text('Input')),
          Center(child: Text('Profile')),
        ],
      ),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}
