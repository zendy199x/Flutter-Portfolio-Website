import 'package:flutter/material.dart';
import 'package:portfolio_website/constants.dart';
import 'package:portfolio_website/sections/contact/components/contact_form.dart';
import 'package:portfolio_website/sections/contact/components/socal_card.dart';

class ContactBox extends StatelessWidget {
  const ContactBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      margin: const EdgeInsets.only(top: kDefaultPadding * 2),
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocalCard(
                color: const Color(0xFFD9FFFC),
                iconSrc: "assets/images/skype.png",
                name: 'Zendy',
                press: () {},
              ),
              SocalCard(
                color: const Color(0xFFE4FFC7),
                iconSrc: "assets/images/whatsapp.png",
                name: 'Zendy',
                press: () {},
              ),
              SocalCard(
                color: const Color(0xFFE8F0F9),
                iconSrc: "assets/images/messanger.png",
                name: 'Zendy',
                press: () {},
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 2),
          const ContactForm(),
        ],
      ),
    );
  }
}
