import 'package:flutter/material.dart';
import 'package:thrilok_portfolio/style/style.dart';
import 'package:thrilok_portfolio/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      height: 50,
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(
            ontap: onLogoTap,
          ),
          const Spacer(),
          IconButton(
            onPressed: onMenuTap,
            icon: const Icon(Icons.menu),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
