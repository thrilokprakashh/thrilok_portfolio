import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thrilok_portfolio/constants/colors.dart';

class CustomTextfiled extends StatelessWidget {
  const CustomTextfiled(
      {super.key, this.controller, this.hintText, this.maxLines = 1});
  final TextEditingController? controller;
  final String? hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: GoogleFonts.jost(
        color: CustomColor.scaffoldBg,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        filled: true,
        fillColor: CustomColor.whitePrimary,
        focusedBorder: getInputBorder,
        enabledBorder: getInputBorder,
        border: getInputBorder,
        hintText: hintText,
        hintStyle: GoogleFonts.jost(color: CustomColor.hintDark),
      ),
    );
  }

  OutlineInputBorder get getInputBorder {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none);
  }
}
