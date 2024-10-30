import 'package:flutter/material.dart';
import 'package:thrilok_portfolio/constants/colors.dart';
import 'package:thrilok_portfolio/constants/sns_link.dart';
import 'package:thrilok_portfolio/widgets/custom_textfiled.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          //title
          const Text(
            "Get in Touch",
            style: TextStyle(
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
                    hintText: "Your Name",
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                //email
                Flexible(
                  child: CustomTextfiled(
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
                onPressed: () {},
                child: Text("Get in Touch"),
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
    );
  }
}
