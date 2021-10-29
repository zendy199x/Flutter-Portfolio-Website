import 'package:flutter/material.dart';
import 'package:portfolio_website/constants.dart';
import 'package:portfolio_website/sections/about/about_section.dart';
import 'package:portfolio_website/sections/contact/contact_section.dart';
import 'package:portfolio_website/sections/feedback/feedback_section.dart';
import 'package:portfolio_website/sections/recent_work/recent_work_section.dart';
import 'package:portfolio_website/sections/service/service_section.dart';
import 'package:portfolio_website/sections/top_section/top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopSection(),
            const SizedBox(height: kDefaultPadding * 2),
            AboutSection(),
            ServiceSection(),
            RecentWorkSection(),
            FeedbackSection(),
            const SizedBox(height: kDefaultPadding),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}
