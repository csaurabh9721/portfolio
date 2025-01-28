import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saurabh_chauhan_portfolio/utils/colors.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
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
              'Personal',
              style: GoogleFonts.fjallaOne(
                textStyle: TextStyle(color: MyColors.white, fontSize: 30),
              ),
            ),
            Text(
              ' Information',
              style: GoogleFonts.fjallaOne(
                textStyle: TextStyle(color: MyColors.primaryColor, fontSize: 30),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 314,
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2), // Adjust color and opacity
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.white.withOpacity(0.2),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: [
                      Card(
                        elevation: 5,
                        color: MyColors.black,
                        shadowColor: MyColors.grey4,
                        surfaceTintColor: MyColors.black,
                        margin: const EdgeInsets.all(0),
                        child: SizedBox(
                          height: 120,
                          width: 212,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '3+',
                                  style: GoogleFonts.baskervville(
                                    textStyle: TextStyle(color: MyColors.primaryColor, fontSize: 50),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      color: MyColors.white,
                                      width: 40,
                                      height: 2,
                                    ),
                                    Text(
                                      '  Experience',
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(color: MyColors.white, fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Card(
                        elevation: 5,
                        color: MyColors.black,
                        shadowColor: MyColors.grey4,
                        surfaceTintColor: MyColors.black,
                        margin: const EdgeInsets.all(0),
                        child: SizedBox(
                          height: 120,
                          width: 212,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '10+',
                                  style: GoogleFonts.baskervville(
                                    textStyle: TextStyle(color: MyColors.primaryColor, fontSize: 50),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      color: MyColors.white,
                                      width: 40,
                                      height: 2,
                                    ),
                                    Text(
                                      '  Projects',
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(color: MyColors.white, fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildRow("First Name", "Saurabh"),
                      _buildRow("Last Name", "Chauhan"),
                      _buildRow("Gender", "Male"),
                      _buildRow("Age", _getYear()),
                      _buildRow("Language", "English, Hindi"),
                      _buildRow("Nationality", "India"),
                      _buildRow("Address", "Ghaziabad, Uttar Pradesh"),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildRow("Mobile 1", "+91 9455122458"),
                      _buildRow("Mobile 2", "+91 9161630825"),
                      _buildRow("Email", "csaurabh002@gmail.com"),
                      _buildRow("Linkedin", "www.xyz.com"),
                      _buildRow("Github", "www.xyz.com"),
                      _buildRow("Freelance", "Available"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),

      ],
    );
  }

  String _getYear() {
    DateTime dateTime1 = DateTime(2001, 1, 11);
    DateTime dateTime2 = DateTime.now();
    return (dateTime2.year - dateTime1.year).toString();
  }

  Row _buildRow(String title, String value) {
    return Row(
      children: [
        Text(
          "$title :",
          style: GoogleFonts.baskervville(
            textStyle: TextStyle(color: MyColors.grey3, fontSize: 15),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Text(
          value,
          style: GoogleFonts.rubik(
            textStyle: TextStyle(color: MyColors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
