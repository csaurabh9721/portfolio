import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:saurabh_chauhan_portfolio/utils/colors.dart';
import '../data/personal_info.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final themeColor = const Color(0XFFFFD700);
    final secondaryColor = Colors.amber;
    final textColor = Colors.white;
    final textSecondary = Colors.white70;
    return  Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, Color(0xFF1A1A1A)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "- I'm Saurabh Chauhan",
            style: GoogleFonts.dancingScript(
              fontSize: size.width * 0.035,
              color: themeColor,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Full Stack Developer",
            style: GoogleFonts.libreBaskerville(
              fontSize: size.width * 0.025,
              color: textColor,
            ),
          ),
          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Text(
              "I’m a mobile app developer with 4+ years of experience helping businesses launch high-quality apps across platforms. I build cross-platform mobile apps using Flutter, native Android apps with Kotlin, and robust backends with Spring Boot. From idea to launch, I handle the full process — delivering fast, scalable, and beautiful apps that solve real-world problems.",
              style: GoogleFonts.lato(
                fontSize: 15,
                color: textSecondary,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 40),
          Wrap(
            spacing: 24,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: [
              _infoTile("Experience", "4+ Years", themeColor),
              _infoTile("Projects", "10+ Completed", themeColor),
              _infoTile("Freelance", "Available", themeColor),
              _infoTile("Location", "Ghaziabad, India", themeColor),
            ],
          )
        ],
      ),
    );
  }
  Widget _infoTile(String title, String value, Color themeColor) {
    return Column(
      children: [
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: themeColor,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: Colors.white70,
          ),
        )
      ],
    );
  }
}
