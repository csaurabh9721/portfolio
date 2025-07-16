import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/latest_article_data.dart';
import '../utils/colors.dart';
import '../utils/title_section.dart';

class Articles extends StatelessWidget {
  const Articles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleSection(
          first: "Latest ",
          second: "Articles",
        ),
        const SizedBox(height: 20),
        Wrap(
          spacing: 24,
          runSpacing: 24,
          alignment: WrapAlignment.center,
          children: articles.map((b) {
            return Container(
              width: 300,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    MyColors.grey8.withValues(alpha: 0.5),
                    MyColors.grey6.withValues(alpha: 0.3)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
                border:
                    Border.all(color: MyColors.white.withValues(alpha: 0.1)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    b.title,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: MyColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Obx(
                    () => Text(
                      b.description,
                      maxLines: b.maxLine.value,
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            color: MyColors.white70, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      b.maxLine.value == 3
                          ? b.maxLine.value = 1000
                          : b.maxLine.value = 3;
                    },
                    child: Obx(()=>Text(
                    b.maxLine.value != 3 ? 'Read less →' : 'Read more →',
                    style: TextStyle(
                    color: MyColors.primaryColor,
                    fontStyle: FontStyle.italic,
                        fontSize: 12,
                    ),
                    ),)
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
