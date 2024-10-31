import 'package:flutter/material.dart';
import 'package:thrilok_portfolio/constants/colors.dart';
import 'dart:js' as js;

class MainMobile extends StatefulWidget {
  const MainMobile({super.key});

  @override
  State<MainMobile> createState() => _MainMobileState();
}

class _MainMobileState extends State<MainMobile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _opacityAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    // Scale animation from 0.5 to 1.0
    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: Image.asset(
                "assets/my_flutter_avatar.png",
                width: screenWidth,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          FadeTransition(
            opacity: _opacityAnimation,
            child: Text(
              "Hi,\nI'm Thrilok Prakash\nA Flutter Developer",
              style: TextStyle(
                  color: CustomColor.whitePrimary,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  height: 1.5),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 180,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                js.context.callMethod("open", [
                  "https://drive.google.com/file/d/1f0vMNVfu5odIJY73KjRQMmo-y4TVbpE-/view?usp=share_link"
                ]);
              },
              child: const Text(
                "Download CV",
                style: TextStyle(color: CustomColor.whitePrimary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
