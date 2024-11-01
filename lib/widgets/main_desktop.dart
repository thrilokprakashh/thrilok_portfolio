import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thrilok_portfolio/constants/colors.dart';
import 'dart:js' as js;

class MainDesktop extends StatefulWidget {
  const MainDesktop({super.key});

  @override
  State<MainDesktop> createState() => _MainDesktopState();
}

class _MainDesktopState extends State<MainDesktop>
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
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FadeTransition(
                opacity: _opacityAnimation,
                child: Text(
                  "Hi,\nI'm Thrilok Prakash\nA Flutter Developer",
                  style: GoogleFonts.jost(
                      color: CustomColor.whitePrimary,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      height: 1.5),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    js.context.callMethod(
                      "open",
                      [
                        "https://drive.google.com/file/d/1rdqQisvhrW1z1SP7bpq-uA2hx-waapxw/view?usp=drivesdk"
                      ],
                    );
                  },
                  child: Text(
                    "Download CV",
                    style: GoogleFonts.jost(
                        color: CustomColor.whitePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          ScaleTransition(
            scale: _scaleAnimation,
            child: Image.asset(
              "assets/my_flutter_avatar.png",
              width: screenWidth / 2,
            ),
          ),
        ],
      ),
    );
  }
}
