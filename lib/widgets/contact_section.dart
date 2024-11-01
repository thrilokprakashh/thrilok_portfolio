import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thrilok_portfolio/constants/colors.dart';
import 'package:thrilok_portfolio/constants/sns_link.dart';
import 'package:thrilok_portfolio/widgets/custom_textfiled.dart';
import 'dart:js' as js;

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: scaffoldMessengerKey,
      child: Container(
        padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
        color: CustomColor.bgLight1,
        child: Column(
          children: [
            //title
            Text(
              "Get in Touch",
              style: GoogleFonts.jost(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: CustomColor.whitePrimary),
            ),
            const SizedBox(
              height: 50,
            ),

            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: Row(
                //name
                children: [
                  Flexible(
                    child: CustomTextfiled(
                      controller: nameController,
                      hintText: "Your Name",
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  //email
                  Flexible(
                    child: CustomTextfiled(
                      controller: emailController,
                      hintText: "Your Email",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            //msg
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: CustomTextfiled(
                controller: messageController,
                hintText: "Your Message",
                maxLines: 16,
              ),
            ),
            const SizedBox(height: 20),
            //button
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: SizedBox(
                height: 50,
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    // Inside the onPressed function
                    if (nameController.text.isEmpty ||
                        emailController.text.isEmpty ||
                        messageController.text.isEmpty) {
                      scaffoldMessengerKey.currentState?.showSnackBar(
                       const SnackBar(
                          content: Text("Please fill out all fields!"),
                        ),
                      );
                    } else {
                      scaffoldMessengerKey.currentState?.showSnackBar(
                        SnackBar(
                          content: Text(
                              "Thank you for your feedback, ${nameController.text}!"),
                        ),
                      );

                      // Clear the text fields after submission
                    }
                  },
                  child: Text(
                    "Get in Touch",
                    style: GoogleFonts.jost(
                        color: CustomColor.whitePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 300),
              child: const Divider(),
            ),
            const SizedBox(
              height: 15,
            ),
            // SNS button
            Wrap(
              spacing: 12,
              runSpacing: 12,
              alignment: WrapAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    js.context.callMethod("open", [SnsLink.github]);
                  },
                  child: Image.asset(
                    "assets/github.png",
                    width: 28,
                  ),
                ),
                InkWell(
                  onTap: () {
                    js.context.callMethod("open", [SnsLink.linkedin]);
                  },
                  child: Image.asset(
                    "assets/linkedin.png",
                    width: 28,
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
