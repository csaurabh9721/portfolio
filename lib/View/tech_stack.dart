import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saurabh_chauhan_portfolio/utils/colors.dart';

import '../data/tech_stack_data.dart';
import '../utils/title_section.dart';

class TechStack extends StatelessWidget {
  const TechStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const TitleSection(
          first: 'Tech ',
          second: 'Stack',
        ),
        const SizedBox(height: 20),
        Wrap(
          spacing: 30,
          runSpacing: 20,
          alignment: WrapAlignment.center,
          children: List.generate(techStackList.length, (i) {
            return Column(
              children: [
                Icon(techStackList[i].icon,
                    size: 40, color: MyColors.primaryColor),
                const SizedBox(height: 10),
                Text(
                  techStackList[i].title,
                  style: GoogleFonts.poppins(
                    textStyle:
                        const TextStyle(color: MyColors.white70, fontSize: 14),
                  ),
                )
              ],
            );
          }),
        ),
      ],
    );
  }
}
