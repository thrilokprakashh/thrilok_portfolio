import 'package:flutter/material.dart';
import 'package:thrilok_portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 560,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [
                  CustomColor.scaffoldBg.withOpacity(0.6),
                  CustomColor.scaffoldBg.withOpacity(0.6),
                ],
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/my_flutter_avatar.png",
              width: screenWidth,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Hi,\nI'm Thrilok Prakash\nA Flutter Developer",
            style: TextStyle(
                color: CustomColor.whitePrimary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                height: 1.5),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 180,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Get in touch"),
            ),
          ),
        ],
      ),
    );
  }
}
