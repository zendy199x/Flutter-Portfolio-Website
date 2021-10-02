import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio_website/constants.dart';
import 'package:portfolio_website/sections/top_section/components/logo_blur_box.dart';
import 'package:portfolio_website/sections/top_section/components/menu.dart';
import 'package:portfolio_website/sections/top_section/components/person_pic.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(
        maxHeight: 900,
        minHeight: 700,
      ),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.png"),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(
          top: kDefaultPadding,
        ),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            const Positioned(
              bottom: 0,
              right: 0,
              child: PersonPic(),
            ),
            Positioned(
              bottom: 0,
              child: Menu(),
            ),
          ],
        ),
      ),
    );
  }
}
