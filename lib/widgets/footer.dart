import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thrilok_portfolio/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.maxFinite,
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            "Made by Thrilok Prakashan with Flutter",
            style: GoogleFonts.jost(
              fontWeight: FontWeight.w400,
              color: CustomColor.whiteSecondary,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "thrilokp13@gmail.com",
            style: GoogleFonts.jost(
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
        ],
      ),
    );
  }
}
