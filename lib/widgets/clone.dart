import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thrilok_portfolio/constants/colors.dart';
import 'package:thrilok_portfolio/pages/facebook_clone.dart';
import 'package:thrilok_portfolio/pages/food_recipe_app.dart';
import 'package:thrilok_portfolio/pages/quiz_app.dart';

import 'package:thrilok_portfolio/utils/project_utils.dart';
import 'package:thrilok_portfolio/widgets/project_card.dart';

import '../pages/whatsApp_clone.dart';

class Clone extends StatelessWidget {
  const Clone({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          Text(
            "Clone",
            style: GoogleFonts.jost(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),
          const SizedBox(
            height: 50,
          ),
          //project card
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 900,
            ),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < hobbyProjectUtils.length; i++)
                  ProjectCard(
                    project: hobbyProjectUtils[i],
                    page: i == 0
                        ? FacebookClone()
                        : (i == 1
                            ? WhatsappClone()
                            : (i == 2 ? FoodRecipeApp() : QuizApp())),

                    //navigation add screen shots
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
