import 'package:flutter/material.dart';
import 'package:thrilok_portfolio/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.maxFinite,
      alignment: Alignment.center,
      child: Column(
        children: [
          const Text(
            "Made by Thrilok Prakashan with Flutter",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: CustomColor.whiteSecondary,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          const Text(
            "thrilokp13@gmail.com",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
        ],
      ),
    );
  }
}
