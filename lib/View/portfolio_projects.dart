import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saurabh_chauhan_portfolio/utils/colors.dart';
import 'package:saurabh_chauhan_portfolio/utils/title_section.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioProjects extends StatelessWidget {
  const PortfolioProjects({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final List<Map<String, dynamic>> projects = [
      {
        'title': 'Hotel Tania',
        'description':
            'Hotel management suite with apps for guests, owners, waiters, kitchen, delivery, and managers.',
        'is_multi_link': true,
        'modules': [
          {
            'name': 'Hotel Tania Owner',
            'url':
                'https://play.google.com/store/apps/details?id=com.webappssol.tania_owner'
          },
          {
            'name': 'Hotel Tania Delivery',
            'url':
                'https://play.google.com/store/apps/details?id=com.webappssol.tania_delivery_boy'
          },
          {
            'name': 'Hotel Tania Manager',
            'url':
                'https://play.google.com/store/apps/details?id=com.webappssol.hotel_tania_manager'
          },
          {
            'name': 'Hotel Tania Kitchen',
            'url':
                'https://play.google.com/store/apps/details?id=com.webappssol.hotel_tania_kot_bot'
          },
          {
            'name': 'Hotel Tania Waiter',
            'url':
                'https://play.google.com/store/apps/details?id=com.webappssol.hotel_tania_waiter'
          },
          {
            'name': 'Hotel Tania',
            'url':
                'https://play.google.com/store/apps/details?id=com.webappssol.hotel_tania'
          },
        ]
      },
      {
        'title': 'Jaypee Greens Golf',
        'description':
            'Golf club app for members/staff: tee bookings, score tracking, events, real-time updates.',
        'link':
            'https://play.google.com/store/apps/details?id=com.jaypeegreens.golf&pli=1'
      },
      {
        'title': 'StayNTravel Master',
        'description':
            'Admin panel app for hotel operations: room bookings, check-in/out, dine-in & food management.',
        'link':
            'https://play.google.com/store/apps/details?id=com.stayntravel.master'
      },
      {
        'title': 'StayNTravel Guest',
        'description':
            'Guest-facing app for hotel bookings, local attractions, dine-in reservations, food orders.',
        'link':
            'https://play.google.com/store/apps/details?id=com.stayntravel.guest'
      },
      {
        'title': 'HelloAstro – Customer',
        'description':
            'Consult astrologers, schedule sessions, and receive personalized predictions.',
        'link':
            'https://play.google.com/store/apps/details?id=com.helloastro.customer'
      },
      {
        'title': 'HelloAstro – Astrologer',
        'description':
            'Astrologer app for managing appointments and live chat with clients.',
        'link':
            'https://play.google.com/store/apps/details?id=com.helloastro.astrologers'
      },
      {
        'title': 'Smart E-Tracker',
        'description':
            'GPS tracking for personal/fleet vehicles: live location, geo-fencing, history.',
        'link':
            'https://play.google.com/store/apps/details?id=com.smartetracker'
      },
      {
        'title': 'NewBazar',
        'description':
            'E-commerce grocery app: product browsing, orders, and secure payments.',
        'link':
            'https://play.google.com/store/apps/details?id=com.webappssol.new_bazar&hl=en_IN'
      },
      {
        'title': 'Chand Chacha',
        'description':
            'Agri-tech app for drone spraying, fertilizer, and wholesale/retail inventory.',
        'link': ''
      },
      {
        'title': 'Ylo Cabs',
        'description':
            'Cab booking app like Ola: ride tracking, fare calc, and in-app payment.',
        'link': ''
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const TitleSection(first: "", second: "Projects"),
        const SizedBox(height: 20),
        Wrap(
          spacing: 24,
          runSpacing: 30,
          alignment: WrapAlignment.center,
          children: projects
              .map((project) => _projectCard(context, project, size))
              .toList(),
        ),
      ],
    );
  }

  Widget _projectCard(
      BuildContext context, Map<String, dynamic> project, Size size) {
    return GestureDetector(
      onTap: () {
        if (project['is_multi_link'] == true) {
          showDialog(
            context: context,
            builder: (_) => _multiModuleDialog(project, context),
          );
        } else if ((project['link'] ?? '').isNotEmpty) {
          launchUrl(Uri.parse(project['link']));
        }
      },
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.white10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project['title'] ?? '',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              project['description'] ?? '',
              style: GoogleFonts.roboto(
                fontSize: 14,
                color: Colors.white70,
                height: 1.4,
              ),
            ),
            const SizedBox(height: 12),
            if ((project['link'] ?? '').isNotEmpty &&
                project['is_multi_link'] != true)
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.open_in_new,
                      color: Color(0XFFFFD700), size: 16),
                  const SizedBox(width: 6),
                  Text(
                    "Play Store",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: Color(0XFFFFD700),
                    ),
                  ),
                ],
              ),
            if (project['is_multi_link'] == true)
              Text(
                "Open",
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: Color(0XFFFFD700),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _multiModuleDialog(
      Map<String, dynamic> project, BuildContext context) {
    return Dialog(
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              project['title'],
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber),
            ),
            const SizedBox(height: 12),
            Builder(builder: (context) {
              double width = MediaQuery.of(context).size.width;
              return SizedBox(
                width: width * 0.5,
                child: Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  alignment: WrapAlignment.center,
                  children: (project['modules'] as List)
                      .map<Widget>((module) => InkWell(
                            onTap: () async {
                              final Uri uri = Uri.parse(module['url']);
                              if (await canLaunchUrl(uri)) {
                                await launchUrl(uri,
                                    mode: LaunchMode.externalApplication);
                              }
                            },
                            child: _buildSkillChip(module['name']),
                          ))
                      .toList(),
                ),
              );
            }),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
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
                  "Close",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillChip(String skill) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
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
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.open_in_new, color: MyColors.primaryColor, size: 20),
          const SizedBox(width: 8),
          Text(
            skill,
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
