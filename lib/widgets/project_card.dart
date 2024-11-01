import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thrilok_portfolio/constants/colors.dart';

import 'package:thrilok_portfolio/utils/project_utils.dart';
import 'dart:js' as js;

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project, required this.page});
  final ProjectUtils project;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 330,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //img
          InkWell(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => page,
              //   ),
              // );

              //navigation for screenshots
            },
            child: Image.asset(
              project.image,
              height: 190,
              width: 260,
              fit: BoxFit.cover,
            ),
          ),
          //title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
              style: GoogleFonts.jost(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
              //subtitle
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtitle,
              style: GoogleFonts.jost(
                fontSize: 12,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
          const Spacer(),
          //footer
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                Text(
                  "Available on:",
                  style: GoogleFonts.jost(
                      color: CustomColor.yellowSecondary, fontSize: 13),
                ),
                const Spacer(),
                if (project.githubLink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [project.githubLink]);
                    },
                    child: Image.asset(
                      "assets/github.png",
                      width: 25,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
