import 'package:flutter/material.dart';
import 'package:thrilok_portfolio/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.ontap});
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: const Text(
        "TP",
        style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            color: CustomColor.yellowSecondary),
      ),
    );
  }
}
