import 'package:flutter/material.dart';
import 'package:thrilok_portfolio/constants/colors.dart';

class FacebookClone extends StatelessWidget {
  const FacebookClone({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Facebook Clone Application",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontStyle: FontStyle.italic,
                    fontSize: 40),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "This Flutter application is a Facebook clone that replicates the social media platform’s UI, using SharedPreferences for managing user settings and authentication locally.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: CustomColor.whiteSecondary),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Features:",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whiteSecondary,
                    fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                "* Authentication\n* Validation\n* Account creation\n* Managing user profile and settings",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: CustomColor.whiteSecondary),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Screenshots:",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whiteSecondary,
                    fontSize: 25),
              ),
            ),
            Row(
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxHeight: 700,
                  ),
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/projects/Simulator Screenshot - iPhone 16 Pro - 2024-10-29 at 12.38.54.png"),
                      fit: BoxFit
                          .cover, // Adjust the image to cover the container
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
