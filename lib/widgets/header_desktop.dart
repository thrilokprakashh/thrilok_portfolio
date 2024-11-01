import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thrilok_portfolio/constants/colors.dart';
import 'package:thrilok_portfolio/constants/nav_items.dart';
import 'package:thrilok_portfolio/style/style.dart';
import 'package:thrilok_portfolio/widgets/site_logo.dart';

class HeaderDesktop extends StatefulWidget {
  const HeaderDesktop({super.key, required this.onNavMenyTap});
  final Function(int) onNavMenyTap;

  @override
  State<HeaderDesktop> createState() => _HeaderDesktopState();
}

class _HeaderDesktopState extends State<HeaderDesktop> {
  late List<bool> _isHovered;

  @override
  void initState() {
    super.initState();
    _isHovered = List<bool>.filled(navTitles.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 60,
      width: double.maxFinite,
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(
            ontap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: MouseRegion(
                onEnter: (_) {
                  setState(() {
                    _isHovered[i] = true;
                  });
                },
                onExit: (_) {
                  setState(() {
                    _isHovered[i] = false;
                  });
                },
                child: TextButton(
                  onPressed: () {
                    widget.onNavMenyTap(i);
                  },
                  child: AnimatedDefaultTextStyle(
                    duration:
                        const Duration(milliseconds: 200), // Animation duration
                    style:  GoogleFonts.jost(
                      fontSize:
                          _isHovered[i] ? 18 : 16, // Change font size on hover
                      fontWeight: FontWeight.w500,
                      color: _isHovered[i]
                          ? const Color.fromARGB(255, 14, 240, 153)
                          : CustomColor.whitePrimary, // Change color on hover
                    ),
                    child: Text(
                      navTitles[i],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
