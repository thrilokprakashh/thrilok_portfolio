import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.ontap});
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 40, // Diameter of the CircleAvatar
        height: 40, // Diameter of the CircleAvatar
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("assets/ppp.png"),
            fit: BoxFit.cover, // This will apply BoxFit.cover
          ),
        ),
      ),
    );
  }
}
