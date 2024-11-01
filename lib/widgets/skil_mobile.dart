import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thrilok_portfolio/constants/colors.dart';
import 'package:thrilok_portfolio/constants/skills_items.dart';

class SkilMobile extends StatelessWidget {
  const SkilMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < platformItems.length; i++)
          Container(
            width: double.maxFinite,
            margin: const EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              color: CustomColor.bgLight2,
              borderRadius: BorderRadius.circular(5),
            ),
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              leading: Image.asset(
                platformItems[i]["img"],
                width: 26,
              ),
              title: Text(
                platformItems[i]["title"],
                style: GoogleFonts.jost(),
              ),
            ),
          ),
        const SizedBox(
          height: 50,
        ),
        //skils
        Wrap(
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.center,
          children: [
            for (int i = 0; i < skillItems.length; i++)
              Chip(
                backgroundColor: CustomColor.bgLight2,
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                label: Text(
                  skillItems[i]["title"],
                  style: GoogleFonts.jost(),
                ),
                avatar: Image.asset(skillItems[i]["img"]),
              ),
          ],
        ),
      ],
    );
  }
}
