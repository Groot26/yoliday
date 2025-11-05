import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  PageController pageController = PageController(initialPage: 1);

  RxInt pageIndex = 1.obs;

  @override
  void onInit() {
    super.onInit();
  }

  final List<Map<String, String>> navItems = [
    {"icon": "assets/icons/home.svg", "label": "Home"},
    {"icon": "assets/icons/portfolia.svg", "label": "Portfolio"},
    {"icon": "assets/icons/input.svg", "label": "Input"},
    {"icon": "assets/icons/profile.svg", "label": "Profile"},
  ];

  void changePage(int index) {
    pageIndex.value = index;
    pageController.jumpToPage(index);
  }
}
