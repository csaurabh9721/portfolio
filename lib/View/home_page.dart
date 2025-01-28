import 'package:flutter/material.dart';
import 'about_me.dart';
import 'experience.dart';
import 'personal_info.dart';
import 'skills.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
            image: AssetImage("assets/desktop-wallpaper-portfolio.jpg",),
              fit: BoxFit.fill
          )
        ),
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: size.width* 0.65,
              child:  Column(
                children: <Widget>[
                  const SizedBox(
                    height: 60,
                  ),
                  AboutMeSection(),
                  const PersonalInfo(),
                  const SkillsSection(),
                  const Experience(),
                  SizedBox(
                    height: 500,
                      child: CustomTimelineWidget()),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
