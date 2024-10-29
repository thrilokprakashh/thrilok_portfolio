import 'package:flutter/material.dart';
import 'package:thrilok_portfolio/constants/colors.dart';
import 'package:thrilok_portfolio/utils/project_utils.dart';
import 'package:thrilok_portfolio/widgets/project_card.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          const Text(
            "Projects",
            style: TextStyle(
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
                  projectCard(
                    project: hobbyProjectUtils[i],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
