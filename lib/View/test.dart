import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColor = const Color(0XFFFFD700);
    final textColor = Colors.white;
    final textSecondary = Colors.white70;

    final experiences = [
      {
        "company": "JIL Information Technology (Jaypee Group)",
        "duration": "Sept 2023 – Present",
        "designation": "Application Development",
        "skills": [
          "Flutter",
          "Kotlin",
          "Spring Boot",
          "Dart",
          "Java",
          "MySQL",
          "Figma"
        ],
        "description":
        "Leading architecture and development of scalable, cross-platform apps in a microservices ecosystem. Using Flutter with Clean Architecture, BLoC, and modular design. Integrated secure REST APIs with token auth and robust error handling. Mentoring juniors, conducting reviews, and driving service-wide architecture. Setup CI/CD, automated testing, and deployed to Play Store, App Store, and Web."
      },
      {
        "company": "WebAppsSol Private Limited",
        "duration": "Aug 2021 – Aug 2023",
        "designation": "Flutter Mobile App Development",
        "skills": [
          "Flutter",
          "Dart",
          "Java",
          "Firebase",
          "REST API",
          "Git",
          "GitHub"
        ],
        "description":
        "Built scalable cross-platform apps using Flutter. Applied Clean Architecture with MVC and MVVM. Used Provider and GetX for state management. Implemented offline-first custom API integration, optimized UI for Android/iOS/Web. Ensured code quality with testing, CI, and Agile workflows."
      },
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),

      child: Column(
        children: [
          Text(
            "Experience",
            style: GoogleFonts.fjallaOne(
              fontSize: 32,
              color: themeColor,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 40),
          ...experiences.map((exp) {
            return Container(
              margin: const EdgeInsets.only(bottom: 40),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.white.withOpacity(0.1)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Duration
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: themeColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      exp['duration']!.toString(),
                      style: GoogleFonts.roboto(
                        fontSize: 13,
                        color: textColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    exp['company']!.toString(),
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),
                  ),
                  Text(
                    exp['designation']!.toString(),
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: textSecondary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 8,
                    runSpacing: 6,
                    children: (exp['skills'] as List<String>)
                        .map((skill) => Chip(
                      backgroundColor: themeColor.withOpacity(0.2),
                      label: Text(skill, style: TextStyle(color: textColor, fontSize: 12)),
                    ))
                        .toList(),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    exp['description']!.toString(),
                    style: GoogleFonts.lato(
                      fontSize: 14,
                      color: textSecondary,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            );
          }).toList()
        ],
      ),
    );
  }
}
