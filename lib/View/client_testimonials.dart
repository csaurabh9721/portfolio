import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/client_testimonials_data.dart';
import '../utils/colors.dart';
import '../utils/title_section.dart';
import 'tech_stack.dart';

class ClientTestimonials extends StatelessWidget {
  const ClientTestimonials({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleSection(first: 'Client ', second: 'Testimonials'),
        const SizedBox(height: 20),
        Wrap(
          spacing: 24,
          runSpacing: 24,
          alignment: WrapAlignment.center,
          children: clientTestimonials.map((t) {
            return Container(
              width: 300,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: MyColors.white.withValues(alpha: 0.05),
                borderRadius: BorderRadius.circular(16),
                border:
                    Border.all(color: MyColors.white.withValues(alpha: 0.1)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.format_quote,
                      size: 28, color: MyColors.primaryColor),
                  const SizedBox(height: 10),
                  Text(
                    t.name,
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          color: MyColors.white70, fontSize: 14),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '- ${t.text}',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: MyColors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
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
