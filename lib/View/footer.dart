import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColor = const Color(0XFFFFD700);
    final secondaryColor = Colors.amber;
    final textColor = Colors.white;
    final textSecondary = Colors.white70;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      color: Colors.black87,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Wrap(
            spacing: 20,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              _footerItem(Icons.phone, "+91 9455122458"),
              _footerItem(Icons.phone_android, "+91 9161630825"),
              _footerItem(Icons.email, "csaurabh002@gmail.com"),
              _footerItem(Icons.code, "github.com/csaurabh002"),
              _footerItem(Icons.work, "linkedin.com/in/saurabhchauhan"),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            "© ${DateTime.now().year} Saurabh Chauhan | Full Stack Developer",
            style: TextStyle(color: textSecondary, fontSize: 13),
          )
        ],
      ),
    );
  }

  Widget _footerItem(IconData icon, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: Colors.white54),
        const SizedBox(width: 6),
        Text(
          text,
          style: GoogleFonts.roboto(color: Colors.white70, fontSize: 13),
        ),
      ],
    );
  }
}
