import 'package:flutter/material.dart';

import 'package:thrilok_portfolio/constants/colors.dart';
import 'package:thrilok_portfolio/constants/size.dart';

import 'package:thrilok_portfolio/widgets/contact_section.dart';

import 'package:thrilok_portfolio/widgets/drawer_mobile.dart';
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
              : const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //MAIN
              if (constraints.maxWidth >= kMinDesktopWidth)
                const HeaderDesktop()
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
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //title
                    const Text(
                      "What I can do",
                      style: TextStyle(
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

              const ProjectSection(),

              const SizedBox(
                height: 30,
              ),

              //CONTACT
              const ContactSection(),
              const SizedBox(
                height: 30,
              ),
              //FOOTER
              Container(
                height: 300,
                width: double.maxFinite,
                child: Column(
                  children: [
                    Text("Made by Thrilok Prakashan with Flutter"),
                    Text("thrilokp13@gmail.com"),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
