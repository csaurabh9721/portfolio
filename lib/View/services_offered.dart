import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saurabh_chauhan_portfolio/utils/colors.dart';

class ServicesOffered extends StatelessWidget {
  const ServicesOffered({super.key});

  @override
  Widget build(BuildContext context) {
    final services = [
      {
        'title': 'Mobile App Development',
        'icon': Icons.phone_iphone,
        'desc': 'Cross-platform app development using Flutter with pixel-perfect UI and smooth performance.'
      },
      {
        'title': 'Native Android Apps',
        'icon': Icons.android,
        'desc': 'Robust native apps using Kotlin and Android SDK with full lifecycle management.'
      },
      {
        'title': 'Backend Development',
        'icon': Icons.cloud,
        'desc': 'Secure REST APIs with Spring Boot, integrated with MySQL or Firebase for scalable solutions.'
      },
      {
        'title': 'App Deployment & CI/CD',
        'icon': Icons.system_security_update,
        'desc': 'Deployment to Play Store, App Store, and web with CI/CD automation and performance monitoring.'
      },
      {
        'title': 'UI/UX Consulting',
        'icon': Icons.design_services,
        'desc': 'Modern design systems, animations, and accessibility-focused user interfaces built in Flutter.'
      },
      {
        'title': 'Project Leadership',
        'icon': Icons.leaderboard,
        'desc': 'Lead full-stack mobile projects with team mentoring, version control, and agile delivery.'
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 20.0),
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
                  text: 'Services',
                  style: GoogleFonts.fjallaOne(
                    textStyle:
                    TextStyle(color: MyColors.primaryColor, fontSize: 36),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Wrap(
            runSpacing: 24,
            spacing: 24,
            alignment: WrapAlignment.center,
            children: services.map((service) => _buildServiceCard(service)).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildServiceCard(Map<String, dynamic> service) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            MyColors.grey8.withOpacity(0.6),
            MyColors.grey9.withOpacity(0.3),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(color: MyColors.primaryColor.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(
            color: MyColors.primaryColor.withOpacity(0.05),
            blurRadius: 15,
            spreadRadius: 1,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            service['icon'],
            color: MyColors.primaryColor,
            size: 40,
          ),
          const SizedBox(height: 12),
          Text(
            service['title'],
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            service['desc'],
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
