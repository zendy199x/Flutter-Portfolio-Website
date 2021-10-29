import 'package:flutter/material.dart';
import 'package:portfolio_website/components/section_title.dart';
import 'package:portfolio_website/constants.dart';
import 'package:portfolio_website/models/service.dart';
import 'package:portfolio_website/sections/service/components/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const SectionTitle(
            color: Color(0xFFFF0000),
            title: "Service Offerings",
            subTitle: "My Strong Arenas",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              services.length,
              (index) => ServiceCard(index: index),
            ),
          )
        ],
      ),
    );
  }
}
