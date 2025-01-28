import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:saurabh_chauhan_portfolio/utils/colors.dart';

class AboutMeSection extends StatelessWidget {
  AboutMeSection({super.key});

  final RxDouble _p1 = 0.0.obs;
  final RxDouble _p2 = 0.0.obs;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String description =
        'I am a dedicated Full Stack Developer with 3 years of experience, specializing in mobile app development using Flutter and Dart. Skilled in Java, Spring, and MySQL, I currently contribute to Jaypee Group and previously at WebAppsSol Pvt, showcasing adaptability and strong problem-solving.';
    _p1.value = -120;
    _p2.value = -220;
    return Column(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: MyColors.primaryColor,
                    height: 300,
                  ),
                ),
                const Expanded(
                  flex: 4,
                  child: SizedBox(
                    height: 300,
                  ),
                )
              ],
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20)),
              child: Container(
                color: Colors.black,
                height: 280,
                width: (size.width * 0.65) - 20,
                child: Row(
                  children: [
                    const Icon(
                      Icons.person,
                      size: 300,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '-I\'m Saurabh Chauhan',
                            style: GoogleFonts.dancingScript(
                              textStyle: TextStyle(color: MyColors.primaryColor, fontSize: 50),
                            ),
                          ),
                          Text(
                            'Full Stack Developer',
                            style: GoogleFonts.libreBaskerville(
                              textStyle: const TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                          Text(
                            description,
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(color: Colors.white70, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                  ],
                ),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                right: _p1.value,
                top: 20,
                duration: const Duration(milliseconds: 800),
                child: MouseRegion(
                  onEnter: (event) {
                    _p1.value = 0;
                  },
                  onExit: (event) {
                    _p1.value = -120;
                  },
                  child: Container(
                    width: 150,
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: MyColors.primaryColor,
                      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50), topLeft: Radius.circular(50)),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.call,
                          color: Colors.black54,
                          size: 18,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          '9455122458',
                          style: GoogleFonts.libreBaskerville(
                            textStyle: const TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                right: _p2.value,
                top: 60,
                duration: const Duration(milliseconds: 800),
                child: MouseRegion(
                  onEnter: (event) {
                    _p2.value = 0;
                  },
                  onExit: (event) {
                    _p2.value = -220;
                  },
                  child: Container(
                    width: 250,
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: MyColors.primaryColor,
                      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50), topLeft: Radius.circular(50)),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.mail,
                          color: Colors.black54,
                          size: 18,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'csaurabh002@gmail.com',
                          style: GoogleFonts.libreBaskerville(
                            textStyle: const TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
