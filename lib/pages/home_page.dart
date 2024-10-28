import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:thrilok_portfolio/constants/colors.dart';
import 'package:thrilok_portfolio/constants/size.dart';

import 'package:thrilok_portfolio/widgets/drawer_mobile.dart';
import 'package:thrilok_portfolio/widgets/header_desktop.dart';
import 'package:thrilok_portfolio/widgets/header_mobile.dart';

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
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer:
            constraints.maxWidth >= kMinDesktopWidth ? null : DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //MAIN
            if (constraints.maxWidth >= kMinDesktopWidth)
              HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: screenSize.height / 1.2,
              constraints: BoxConstraints(minHeight: 350),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hi,\nI'm Thrilok Prakashan\nA Flutter Developer"),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Get in touch"),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/my_flutter_avatar.png",
                    width: screenWidth / 2,
                  ),
                ],
              ),
            ),

            //SKILL
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ), //PROJECT
            Container(
              height: 500,
              width: double.maxFinite,
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
    });
  }
}
