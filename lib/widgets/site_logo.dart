import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.ontap});
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: const CircleAvatar(
        radius: 23,
        backgroundImage: AssetImage("assets/1720102216002.png"),
      ),
    );
  }
}
