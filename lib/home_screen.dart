import 'package:flutter/material.dart';
import 'package:portfolio_website/constants.dart';
import 'package:portfolio_website/sections/top_section/top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            TopSection(),
            SizedBox(height: kDefaultPadding * 2),
          ],
        ),
      ),
    );
  }
}
