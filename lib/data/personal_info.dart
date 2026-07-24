import 'dart:convert';

import 'package:get/get.dart';

import '../models/personal_inof_model.dart';

import 'package:http/http.dart' as http;

class PersonalInfoController extends GetxController {
  late final Rx<PersonalInfoModel> personalInfo;

  Future<void> _fetchAboutMe() async {
      personalInfo.value = _defaultData;
  }
  final PersonalInfoModel _defaultData = PersonalInfoModel(
    firstName: "Saurabh",
    lastName: "Chauhan",
    stack: "Full Stack Developer",
    aboutMe:
        '''Full Stack Developer with 5+ years of experience building scalable web, mobile, and backend applications using Java, Spring Boot, Flutter, and Dart. Experienced in developing REST APIs, microservices, cross-platform mobile applications, and high-performance backend systems. Proficient in Spring Security, JPA/Hibernate, MySQL, Redis, RabbitMQ, Docker, WebSocket, Git, and CI/CD.

Skilled in end-to-end application development, including backend architecture, API design, database modeling, third-party integrations, authentication and authorization, performance optimization, code reviews, and production support. Passionate about writing clean, maintainable code and designing reliable, scalable software solutions that deliver excellent user experiences. Continuously exploring modern technologies and best practices to build innovative, efficient, and future-ready applications.
''',
    gender: "Male",
    birthDate: "2001-01-11",
    languages: ["English", "Hindi"],
    nationality: "India",
    address: "Noida, India",
    mobile1: "+91 9161630825",
    mobile2: "+91 9455122458",
    email: "csaurabh002@gmail.com",
    linkedIn: "https://www.linkedin.com/in/saurabh-chauhan-374992217",
    github: "https://github.com/csaurabh9721",
    freelanceStatus: "Available",
    experienceYears: 5,
    totalProjects: 15,
  );

  @override
  void onInit() {
    super.onInit();
    personalInfo = Rx<PersonalInfoModel>(_defaultData);
    _fetchAboutMe();
  }
}
