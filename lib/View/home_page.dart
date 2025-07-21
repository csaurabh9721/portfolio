import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saurabh_chauhan_portfolio/View/client_testimonials.dart';
import 'package:saurabh_chauhan_portfolio/View/portfolio_projects.dart';
import 'about_me.dart';
import 'articles.dart';
import 'experience.dart';
import 'footer.dart';
import 'tech_stack.dart';
import 'skills.dart';
import 'services_offered.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> bgImages =
      List.generate(8, (index) => "assets/bg${index + 1}.jpg");
  final RxInt _index = 0.obs;

  @override
  void initState() {
    super.initState();
    _changeImage();
  }


  Future<void> _changeImage()async {
    await Future.delayed(const Duration(seconds: 8));
    if (_index.value < bgImages.length - 1) {
      _index.value++;
    } else {
      _index.value = 0;
    }
    _changeImage();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Obx(
            () => AnimatedSwitcher(
              duration: const Duration(seconds: 3),
              child: SizedBox(
                key: ValueKey<String>(bgImages[_index.value]),
                height: size.height,
                width: size.width,
                child: Image.asset(
                  bgImages[_index.value],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.5), // Overlay for better readability
              ),
              child: const Column(
                children: [
                  AboutMeSection(),
                  SkillSection(),
                  Experience(),
                  ServicesOffered(),
                  SizedBox(height: 60),
                  TechStack(),
                  SizedBox(height: 60),
                  ClientTestimonials(),
                  SizedBox(height: 60),
                  Articles(),
                  SizedBox(height: 60),
                  PortfolioProjects(),
                  SizedBox(height: 60),
                  Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
