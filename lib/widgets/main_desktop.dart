import 'package:flutter/material.dart';
import 'package:thrilok_portfolio/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             const Text(
                "Hi,\nI'm Thrilok Prakash\nA Flutter Developer",
                style: TextStyle(
                    color: CustomColor.whitePrimary,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    height: 1.5),
              ),
            const  SizedBox(height: 20),
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child:const Text("Get in touch"),
                ),
              ),
            ],
          ),
          Image.asset(
            "assets/my_flutter_avatar.png",
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
