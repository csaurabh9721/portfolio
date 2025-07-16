import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saurabh_chauhan_portfolio/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      color: MyColors.black87,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Wrap(
            spacing: 20,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              _footerItem(Icons.phone, "+91 9455122458", true),
              _footerItem(Icons.phone_android, "+91 9161630825", true),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.email, size: 16, color: MyColors.white54),
                  const SizedBox(width: 6),
                  SelectableText(
                    "csaurabh002@gmail.com",
                    style:
                        GoogleFonts.roboto(color: MyColors.white70, fontSize: 13),
                  ),
                  const SizedBox(width: 4),
                  InkWell(
                      onTap: () => launchEmail(),
                      child: Icon(Icons.link,
                          size: 18, color: MyColors.primaryColor)),
                ],
              ),
              InkWell(
                onTap: () => _launchURL("https://github.com/csaurabh9721/"),
                child: _footerItem(Icons.code, "github.com"),
              ),
              InkWell(
                onTap: () => _launchURL(
                    "https://www.linkedin.com/in/saurabh-chauhan-374992217/"),
                child: _footerItem(Icons.link, "linkedin.com"),
              ),
              InkWell(
                onTap: _downloadResume,
                child: _footerItem(Icons.download, "Download Resume"),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            "© ${DateTime.now().year} Saurabh Chauhan | Full Stack Developer",
            style: const TextStyle(color: MyColors.white70, fontSize: 13),
          )
        ],
      ),
    );
  }

  Widget _footerItem(IconData icon, String text,
      [bool isSelectableText = false]) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: MyColors.white54),
        const SizedBox(width: 6),
        isSelectableText
            ? SelectableText(
                text,
                style: GoogleFonts.roboto(color: MyColors.white70, fontSize: 13),
              )
            : Text(
                text,
                style: GoogleFonts.roboto(color: MyColors.white70, fontSize: 13),
              ),
      ],
    );
  }

  void _launchURL(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  void launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'csaurabh002@gmail.com',
      query: _encodeQueryParameters(<String, String>{
        'subject': 'Portfolio Inquiry',
        'body': 'Hi Saurabh,\n\nI saw your portfolio and wanted to discuss...',
      }),
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not launch $emailUri';
    }
  }

  String? _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  void _downloadResume() {
    const url = 'assets/Saurabh Chauhan.pdf';
    html.AnchorElement anchorElement = html.AnchorElement(href: url)
      ..setAttribute("download", "Saurabh_Chauhan_Resume.pdf")
      ..click();
  }
}
