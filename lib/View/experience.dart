import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saurabh_chauhan_portfolio/utils/colors.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> map = [
      {
        "year": "AUG-2021",
        "company": "Webappssol Private Limited",
        "about": "Webappssol PVT LTD description",
        "status": true,
      },
      {
        "year": "AUG-2022",
        "company": "Webappssol Private Limited",
        "about": "Webappssol PVT LTD description",
        "status": false,
      },
      {
        "year": "SEP-2023",
        "company": "JIL Information Technology PVT LTD (Jaypee Group)",
        "about": "JIL Information Technology PVT LTD description",
        "status": true,
      },
      {
        "year": "SEP-2024",
        "company": "JIL Information Technology PVT LTD (Jaypee Group)",
        "about": "JIL Information Technology PVT LTD description",
        "status": false,
      },
    ];
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'My',
              style: GoogleFonts.fjallaOne(
                textStyle: TextStyle(color: MyColors.white, fontSize: 30),
              ),
            ),
            Text(
              ' Experience',
              style: GoogleFonts.fjallaOne(
                textStyle: TextStyle(color: MyColors.primaryColor, fontSize: 30),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        ...List.generate(
          map.length,
          (index) => Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  color: MyColors.primaryColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  map[index]["year"],
                  style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: [
                  map[index]["status"]
                      ? Icon(
                          Icons.circle,
                          size: 30,
                          color: MyColors.primaryColor,
                        )
                      : Icon(
                          Icons.circle_outlined,
                          size: 30,
                          color: MyColors.primaryColor,
                        ),
                  Container(
                    height: 130,
                    width: 2,
                    color: MyColors.primaryColor,
                  ),
                ],
              ),
              const SizedBox(
                width: 16,
              ),
              map[index]["status"]
                  ? Container(
                      height: 150,
                      width: 600,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2), // Adjust color and opacity
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.2),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  map[index]["company"],
                                  style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(
                      height: 150,
                      width: 600,
                    ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
class CustomTimelineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Vertical line above the circle
        Expanded(
          child: Container(
            width: 2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.teal, Colors.orange],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        // Icon inside a circle
        Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.rocket_launch, // Rocket icon
                size: 40,
                color: Colors.orange,
              ),
            ),
            Positioned(
              bottom: -5,
              child: Container(
                height: 2,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
            ),
          ],
        ),
        // Vertical line below the circle
        Expanded(
          child: Container(
            width: 2,
            color: Colors.orange,
          ),
        ),
        // Text below
        SizedBox(height: 8),
        Text(
          '05',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),

      ],
    );
  }
}