import 'dart:async';
import 'package:flutter/material.dart';
import 'about_me.dart';
import 'experience.dart';
import 'footer.dart';
import 'newf.dart';
import 'skills.dart';
import 'services_offered.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> bgImages = List.generate(8, (index) => "assets/bg${index + 1}.jpg");
  int _index = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 8), (timer) {
      setState(() {
        _index = (_index + 1) % bgImages.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Clean up timer
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          AnimatedSwitcher(
            duration: const Duration(seconds: 2),
            child: SizedBox(
              key: ValueKey<String>(bgImages[_index]),
              height: size.height,
              width: size.width,
              child: Image.asset(
                bgImages[_index],
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Overlay content
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
                  PortfolioExtras(),
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
