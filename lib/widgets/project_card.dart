import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thrilok_portfolio/constants/colors.dart';

import 'package:thrilok_portfolio/utils/project_utils.dart';
import 'dart:js' as js;

class ProjectCard extends StatefulWidget {
  const ProjectCard({super.key, required this.project, required this.page});
  final ProjectUtils project;
  final Widget page;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _animation = Tween<double>(begin: 1.0, end: 1.2).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
              widget.project.image,
              height: 190,
              width: 260,
              fit: BoxFit.cover,
            ),
          ),
          //title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              widget.project.title,
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
              widget.project.subtitle,
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
                if (widget.project.githubLink != null)
                  MouseRegion(
                    onEnter: (_) => _controller.forward(),
                    onExit: (_) => _controller.reverse(),
                    child: ScaleTransition(
                      scale: _animation,
                      child: InkWell(
                        onTap: () {
                          js.context
                              .callMethod("open", [widget.project.githubLink]);
                        },
                        child: Image.asset(
                          "assets/github.png",
                          width: 25,
                        ),
                      ),
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
