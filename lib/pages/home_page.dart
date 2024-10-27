import 'package:flutter/material.dart';
import 'package:thrilok_portfolio/constants/colors.dart';
import 'package:thrilok_portfolio/constants/nav_items.dart';
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
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      endDrawer: Drawer(
        backgroundColor: CustomColor.scaffoldBg,
        child: ListView(
          children: [
            for (int i = 0; i < navIcons.length; i++)
              ListTile(
                leading: Icon(navIcons[i]),
                title: Text(navTitles[i]),
              ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //MAIN
          // HeaderDesktop(),
          HeaderMobile(
            onLogoTap: () {},
            onMenuTap: () {
              scaffoldKey.currentState?.openEndDrawer();
            },
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
  }
}
