import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saurabh_chauhan_portfolio/utils/colors.dart';

class PortfolioExtras extends StatelessWidget {
  const PortfolioExtras({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 60),
        _buildSectionTitle('Tech ', 'Stack'),
        const SizedBox(height: 20),
        _buildTechStack(),
        const SizedBox(height: 60),
        _buildSectionTitle('Client ', 'Testimonials'),
        const SizedBox(height: 20),
        _buildTestimonials(),
        const SizedBox(height: 60),
        _buildSectionTitle('Latest ', 'Articles'),
        const SizedBox(height: 20),
        _buildBlogs(),
      ],
    );
  }

  Widget _buildSectionTitle(String first, String second) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: first,
            style: GoogleFonts.fjallaOne(
              textStyle: TextStyle(color: MyColors.white, fontSize: 36),
            ),
          ),
          TextSpan(
            text: second,
            style: GoogleFonts.fjallaOne(
              textStyle: TextStyle(color: MyColors.primaryColor, fontSize: 36),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTechStack() {
    final icons = [
      Icons.flutter_dash, Icons.android, Icons.code, Icons.storage, Icons.cloud, Icons.security,
    ];
    final titles = [
      'Flutter', 'Kotlin', 'Spring Boot', 'MySQL', 'Firebase', 'REST APIs',
    ];

    return Wrap(
      spacing: 30,
      runSpacing: 20,
      alignment: WrapAlignment.center,
      children: List.generate(icons.length, (i) {
        return Column(
          children: [
            Icon(icons[i], size: 40, color: MyColors.primaryColor),
            const SizedBox(height: 10),
            Text(
              titles[i],
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(color: Colors.white70, fontSize: 14),
              ),
            )
          ],
        );
      }),
    );
  }

  Widget _buildTestimonials() {
    final testimonials = [
      {
        'name': 'Rahul Verma',
        'text': 'Saurabh exceeded expectations and delivered a top-tier mobile app. Highly recommended!'
      },
      {
        'name': 'Anjali Singh',
        'text': 'Reliable and professional developer. Took full ownership and delivered on time.'
      },
    ];

    return Wrap(
      spacing: 24,
      runSpacing: 24,
      alignment: WrapAlignment.center,
      children: testimonials.map((t) {
        return Container(
          width: 300,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white.withOpacity(0.1)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.format_quote, size: 28, color: MyColors.primaryColor),
              const SizedBox(height: 10),
              Text(
                t['text']!,
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '- ${t['name']!}',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildBlogs() {
    final blogs = [
      {
        'title': 'Why Flutter is the Future of Mobile Apps',
        'desc': 'Explore how Flutter empowers developers to build stunning apps with a single codebase.'
      },
      {
        'title': 'Integrating REST APIs in Flutter using Dio',
        'desc': 'Step-by-step guide on connecting your Flutter app with backend services securely.'
      }
    ];

    return Wrap(
      spacing: 24,
      runSpacing: 24,
      alignment: WrapAlignment.center,
      children: blogs.map((b) {
        return Container(
          width: 300,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [MyColors.grey8.withOpacity(0.5), MyColors.grey6.withOpacity(0.3)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white.withOpacity(0.1)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                b['title']!,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                b['desc']!,
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Read more →',
                style: TextStyle(
                  color: MyColors.primaryColor,
                  fontStyle: FontStyle.italic,
                  fontSize: 12,
                ),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
