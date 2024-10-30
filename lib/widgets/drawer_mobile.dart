import 'package:flutter/material.dart';
import 'package:thrilok_portfolio/constants/colors.dart';
import 'package:thrilok_portfolio/constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key, required this.onNavItemTap});
  final Function(int) onNavItemTap;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.close),
              ),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              titleTextStyle: const TextStyle(
                  color: CustomColor.whitePrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
              onTap: () {
                onNavItemTap(i);
              },
              leading: Icon(navIcons[i]),
              title: Text(navTitles[i]),
            ),
        ],
      ),
    );
  }
}
