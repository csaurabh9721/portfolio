import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class TitleSection extends StatelessWidget {
  final String first;
  final String second;

  const TitleSection({
    super.key,
    required this.first,
    required this.second,
  });

  @override
  Widget build(BuildContext context) {
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
}
