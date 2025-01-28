import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saurabh_chauhan_portfolio/utils/colors.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Map<String, dynamic>> skillName = [
      {
        "skill_name": "Flutter",
        "skill_percentage": 95,
      },
      {
        "skill_name": "Dart",
        "skill_percentage": 95,
      },
      {
        "skill_name": "Git",
        "skill_percentage": 95,
      },
      {
        "skill_name": "Core Java",
        "skill_percentage": 70,
      },
      {
        "skill_name": "Spring Boot",
        "skill_percentage": 70,
      },
      {
        "skill_name": "My SQL",
        "skill_percentage": 90,
      },
      {
        "skill_name": "Figma",
        "skill_percentage": 70,
      },
    ];
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'My',
                style: GoogleFonts.fjallaOne(
                  textStyle: TextStyle(color: MyColors.white, fontSize: 30),
                ),
              ),
              Text(
                ' Skills',
                style: GoogleFonts.fjallaOne(
                  textStyle: TextStyle(color: MyColors.primaryColor, fontSize: 30),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: size.width * 0.1,
            runSpacing: 40,
            children: List.generate(
                skillName.length, (index) => SkillCard(skill: skillName[index]["skill_name"].toUpperCase(), percentage: skillName[index]["skill_percentage"])),
          ),
        ],
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final String skill;
  final double percentage;

  const SkillCard({super.key, required this.skill, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: 60,
                width: 60,
                child: CircularProgressIndicator(
                  strokeWidth: 8,
                  value: percentage / 100,
                  backgroundColor: Colors.grey,
                  valueColor:  AlwaysStoppedAnimation<Color>(MyColors.primaryColor),
                ),
              ),
              Text('$percentage%', style: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 12),
          Text(skill, style: const TextStyle(color: Colors.white70, fontSize: 14)),
        ],
      ),
    );
  }
}
