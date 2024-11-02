import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:thrilok_portfolio/constants/colors.dart';
import 'package:thrilok_portfolio/constants/size.dart';
import 'package:thrilok_portfolio/widgets/contact_section.dart';

import 'package:thrilok_portfolio/widgets/drawer_mobile.dart';
import 'package:thrilok_portfolio/widgets/footer.dart';
import 'package:thrilok_portfolio/widgets/header_desktop.dart';
import 'package:thrilok_portfolio/widgets/header_mobile.dart';
import 'package:thrilok_portfolio/widgets/main_desktop.dart';
import 'package:thrilok_portfolio/widgets/main_mobile.dart';

import 'package:thrilok_portfolio/widgets/project_section.dart';
import 'package:thrilok_portfolio/widgets/skil_desktop.dart';
import 'package:thrilok_portfolio/widgets/skil_mobile.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navBarKey = List.generate(
    4,
    (index) => GlobalKey(),
  );

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    final screenWidth = screenSize.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : DrawerMobile(
                  onNavItemTap: (int navIntex) {
                    //call funtion
                    scaffoldKey.currentState?.closeEndDrawer();
                    scrollToSection(navIntex);
                  },
                ),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  key: navBarKey.first,
                ),
                //MAIN
                if (constraints.maxWidth >= kMinDesktopWidth)
                  HeaderDesktop(
                    onNavMenyTap: (int navIndex) {
                      //call function
                      scrollToSection(navIndex);
                    },
                  )
                else
                  HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                if (constraints.maxWidth >= kMinDesktopWidth)
                  const MainDesktop()
                else
                  const MainMobile(),

                //SKILL
                Container(
                  key: navBarKey[1],
                  width: screenWidth,
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: CustomColor.bgLight1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //title
                      Text(
                        "What I can do",
                        style: GoogleFonts.jost(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.whitePrimary),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      //platforms and skills
                      if (constraints.maxWidth >= kMedDesktopWidth)
                        const SkilDesktop()
                      else
                        const SkilMobile(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // //PROJECT

                ProjectSection(
                  key: navBarKey[2],
                ),

                const SizedBox(
                  height: 30,
                ),

                //CONTACT
                ContactSection(
                  key: navBarKey[3],
                ),
                const SizedBox(
                  height: 30,
                ),
                //FOOTER
                const Footer()
              ],
            ),
          ),
        );
      },
    );
  }

  void scrollToSection(int navIndex) {
    final key = navBarKey[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
