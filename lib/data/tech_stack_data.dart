import 'package:flutter/material.dart';

final _icons = [
  Icons.flutter_dash,
  Icons.android,
  Icons.code,
  Icons.storage,
  Icons.cloud,
  Icons.security,
];
final _titles = [
  'Flutter',
  'Kotlin',
  'Spring Boot',
  'MySQL',
  'Firebase',
  'REST APIs',
];

List<TechStackData> techStackList = List.generate(
  _icons.length,
  (index) => TechStackData(
    title: _titles[index],
    icon: _icons[index],
  ),
);

class TechStackData {
  final String title;
  final IconData icon;

  TechStackData({required this.title, required this.icon});
}
