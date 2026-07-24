import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class TechStackDataController extends GetxController {
  static final Map<String, IconData> iconMap = {
    "flutter": Icons.flutter_dash,
    "kotlin": Icons.android,
    "spring_boot": Icons.code,
    "my_sql": Icons.storage,
    "firebase": Icons.cloud,
    "rest_api": Icons.security,
  };
  final _icons = [
    Icons.android,
    Icons.flutter_dash,
    Icons.code,
    Icons.storage,
    Icons.cloud,
    Icons.security,
  ];
  final _titles = [
    'Kotlin',
    'Flutter',
    'Spring Boot',
    'MySQL',
    'Firebase',
    'REST APIs',
  ];
  RxList<TechStackData> techStackList = <TechStackData>[].obs;

  Future<void> _fetchTechStack() async {
    try {
      final response =
          await http.get(Uri.parse('http://localhost:8080/tech_stack_api/get'));
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        techStackList.value = List<TechStackData>.from(
            json.map((e) => TechStackData.fromJson(e)));
      } else {
        throw Exception();
      }
    } catch (e) {
      _setDefaultData();
    }
  }

  void _setDefaultData() {
    techStackList.value = List.generate(
      _icons.length,
      (index) => TechStackData(
        title: _titles[index],
        icon: _icons[index],
      ),
    );
  }

  @override
  void onInit() {
    super.onInit();
    _fetchTechStack();
  }
}

class TechStackData {
  final String title;
  final IconData icon;

  TechStackData({required this.title, required this.icon});

  factory TechStackData.fromJson(Map<String, dynamic> json) {
    return TechStackData(
      title: json['name'],
      icon: TechStackDataController.iconMap[json['key']] ?? Icons.question_mark,
    );
  }
}
