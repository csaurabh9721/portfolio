import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saurabh_chauhan_portfolio/utils/colors.dart';

import '../data/personal_info.dart';
import 'package:get/get.dart';

import '../models/personal_inof_model.dart';

class AboutMeSection extends StatelessWidget {
  AboutMeSection({super.key});

  final PersonalInfoController _controller = Get.put(PersonalInfoController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Obx(
      () {
        PersonalInfoModel personalInfo = _controller.personalInfo.value;
        return Container(
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
                "- I'm ${personalInfo.firstName} ${personalInfo.lastName}",
                style: GoogleFonts.dancingScript(
                  fontSize: size.width * 0.035,
                  color: MyColors.primaryColor,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                personalInfo.stack,
                style: GoogleFonts.libreBaskerville(
                  fontSize: size.width * 0.025,
                  color: MyColors.textPrimary,
                ),
              ),
              const SizedBox(height: 20),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 700),
                child: Text(
                  personalInfo.aboutMe,
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: MyColors.textSecondary,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40),
              Wrap(
                spacing: 30,
                runSpacing: 16,
                alignment: WrapAlignment.center,
                children: [
                  _infoTile("Experience", personalInfo.getExperienceYears,
                      MyColors.primaryColor),
                  _infoTile("Projects", personalInfo.getProjectCount,
                      MyColors.primaryColor),
                  _infoTile(
                      "Location", personalInfo.address, MyColors.primaryColor),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  Widget _infoTile(String title, String value, Color themeColor) {
    return Column(
      children: [
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: themeColor,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: MyColors.white70,
          ),
        )
      ],
    );
  }
}
