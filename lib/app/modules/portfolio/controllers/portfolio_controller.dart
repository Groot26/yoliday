import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class PortfolioController extends GetxController {
  final RxList<Map<String, dynamic>> projects = <Map<String, dynamic>>[].obs;
  final RxList<Map<String, dynamic>> filteredProjects =
      <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadProjects();
  }

  Future<void> loadProjects() async {
    final data = await rootBundle.loadString('assets/json/projects.json');
    final List<dynamic> jsonResult = json.decode(data);
    projects.assignAll(
      jsonResult.map((e) => e as Map<String, dynamic>).toList(),
    );
    filteredProjects.assignAll(projects);
  }

  void filterProjects(String query) {
    if (query.isEmpty) {
      filteredProjects.assignAll(projects);
    } else {
      filteredProjects.assignAll(
        projects.where(
          (p) =>
              p['title'].toString().toLowerCase().contains(query.toLowerCase()),
        ),
      );
    }
  }
}
