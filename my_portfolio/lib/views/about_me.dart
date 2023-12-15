import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/app_text_style.dart';

import '../globals/app_buttons.dart';
import '../globals/constants.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      color: AppColors.bgColor2,
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        Image.asset(
          AppAssets.profile1,
          height: 450,
          width: 400,
        ),
        Constaints.sizedBox(width: 25),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            FadeInRight(
              duration: const Duration(milliseconds: 1200),
              child: RichText(
                text: TextSpan(
                  text: 'About',
                  style: AppTextStyles.headingStyles(fontSize: 30),
                  children: [
                    TextSpan(
                      text: 'Me',
                      style: AppTextStyles.headingStyles(
                          fontSize: 30, color: AppColors.themeColor),
                    ),
                  ],
                ),
              ),
            ),
            Constaints.sizedBox(height: 6),
            FadeInLeft(
                duration: Duration(milliseconds: 1400),
                child: Text(
                  'Flutter Developer!',
                  style: AppTextStyles.monteseratStyle(color: Colors.white),
                )),
            Constaints.sizedBox(height: 8),
            FadeInLeft(
                duration: Duration(milliseconds: 1400),
                child: Text(
                  'asdasdasdsadasdsadasdsad'
                  'asdasdasdsadasdsadcnvnvdjsfbewkrfjasfasdasds'
                  'adajidbkjabfkjabfebfiuewbfwejbtkewjbfad masnbdasdsadasfgwgrwtw34tqt',
                  style: AppTextStyles.normalStyle(),
                )),
            Constaints.sizedBox(height: 15),
            FadeInUp(
              duration: const Duration(milliseconds: 1800),
              child: AppButtons.buildmaterialButton(
                  onTap: () {}, buttonName: 'Read More'),
            ),
          ],
        )),
      ]),
    );
  }
}
