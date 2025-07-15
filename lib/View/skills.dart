import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saurabh_chauhan_portfolio/utils/colors.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'My ',
                  style: GoogleFonts.fjallaOne(
                    textStyle: TextStyle(color: MyColors.white, fontSize: 36),
                  ),
                ),
                TextSpan(
                  text: 'Skills',
                  style: GoogleFonts.fjallaOne(
                    textStyle:
                    TextStyle(color: MyColors.primaryColor, fontSize: 36),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          _buildSkillCategory("🚀 Core Skills", [
            "Flutter (Cross-platform)",
            "Dart",
            "Kotlin (Native Android)",
            "Java",
            "Spring Boot (Backend)",
            "RESTful APIs"
          ]),
          const SizedBox(height: 30),
          _buildSkillCategory("🧱 Architecture & State Management", [
            "Clean Architecture",
            "MVVM, MVC",
            "BLoC, Provider, GetX"
          ]),
          const SizedBox(height: 30),
          _buildSkillCategory("🔐 Database & Backend", [
            "MySQL",
            "Firebase (Auth, Firestore, FCM)",
            "Cloud Functions"
          ]),
          const SizedBox(height: 30),
          _buildSkillCategory("🧪 Testing & Quality", [
            "Unit, Widget, Integration Testing",
            "Postman, Swagger",
            "CI/CD, Git Workflow"
          ]),
          const SizedBox(height: 30),
          _buildSkillCategory("🎨 UI/UX & Tools", [
            "Material Design, Responsive UI",
            "Figma, Adobe XD",
            "VS Code, Android Studio, IntelliJ"
          ]),
        ],
      ),
    );
  }

  Widget _buildSkillCategory(String title, List<String> skills) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: MyColors.secondaryColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 20,
          runSpacing: 16,
          alignment: WrapAlignment.center,
          children: skills.map((skill) => _buildSkillChip(skill)).toList(),
        )
      ],
    );
  }

  Widget _buildSkillChip(String skill) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white.withOpacity(0.1)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(2, 4),
          )
        ],
      ),
      child: Text(
        skill,
        style: GoogleFonts.roboto(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }
}
