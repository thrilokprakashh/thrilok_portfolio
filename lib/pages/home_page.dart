import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:thrilok_portfolio/constants/colors.dart';
import 'package:thrilok_portfolio/constants/size.dart';

import 'package:thrilok_portfolio/widgets/drawer_mobile.dart';
import 'package:thrilok_portfolio/widgets/header_desktop.dart';
import 'package:thrilok_portfolio/widgets/header_mobile.dart';
import 'package:thrilok_portfolio/widgets/main_desktop.dart';
import 'package:thrilok_portfolio/widgets/main_mobile.dart';
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
    final screenHeight = screenSize.height;
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
              // if (constraints.maxWidth >= kMinDesktopWidth)
              //   const HeaderDesktop()
              // else
              //   HeaderMobile(
              //     onLogoTap: () {},
              //     onMenuTap: () {
              //       scaffoldKey.currentState?.openEndDrawer();
              //     },
              //   ),
              // if (constraints.maxWidth >= kMinDesktopWidth)
              //   const MainDesktop()
              // else
              //   const MainMobile(),

              // //SKILL
              // Container(
              //   width: screenWidth,
              //   padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              //   color: CustomColor.bgLight1,
              //   child: Column(
              //     mainAxisSize: MainAxisSize.min,
              //     children: [
              //       //title
              //       const Text(
              //         "What I can do",
              //         style: TextStyle(
              //             fontSize: 24,
              //             fontWeight: FontWeight.bold,
              //             color: CustomColor.whitePrimary),
              //       ),
              //       const SizedBox(
              //         height: 50,
              //       ),
              //       //platforms and skills
              //       if (constraints.maxWidth >= kMedDesktopWidth)
              //         const SkilDesktop()
              //       else
              //         const SkilMobile(),
              //     ],
              //   ),
              // ), //PROJECT
              Container(
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
                    //project card
                    Container(
                      height: 300,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: CustomColor.bgLight2,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/projects/D9BA6C60-8EE0-4E9C-9687-BD778C38E7AD.png",
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //CONTACT
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              //FOOTER
              Container(
                height: 500,
                width: double.maxFinite,
              ),
            ],
          ),
        );
      },
    );
  }
}
