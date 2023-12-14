import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/constants.dart';

import '../globals/app_colors.dart';
import '../globals/app_text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        toolbarHeight: 60,
        titleSpacing: 90,
        elevation: 2,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('Portfolio'),
            Spacer(),
            Text(
              'Home',
              style: AppTextStyles.headerTextStyle(),
            ),
            SizedBox(
              width: 24,
            ),
            Text(
              'About',
              style: AppTextStyles.headerTextStyle(),
            ),
            SizedBox(
              width: 24,
            ),
            Text(
              'Projects',
              style: AppTextStyles.headerTextStyle(),
            ),
            SizedBox(
              width: 24,
            ),
            Text(
              'Portfolio',
              style: AppTextStyles.headerTextStyle(),
            ),
            SizedBox(
              width: 24,
            ),
            Text(
              'Contact',
              style: AppTextStyles.headerTextStyle(),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
            top: size.height * 0.3,
            left: size.width * 0.2,
            right: size.width * 0.2),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello It\'s ME",
                      style: AppTextStyles.monteseratStyle(color: Colors.white),
                    ),
                    Constaints.sizedBox(height: 15),
                    Text(
                      "Nirdesh Pradhan",
                      style: AppTextStyles.headingStyles(),
                    ),
                    Constaints.sizedBox(height: 15),
                    Row(children: [
                      Text(
                        "And I am a ",
                        style:
                            AppTextStyles.monteseratStyle(color: Colors.white),
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            "Backend Developer",
                            textStyle: AppTextStyles.monteseratStyle(
                                color: Colors.lightBlue),
                          ),
                          TyperAnimatedText(
                            "Learner",
                            textStyle: AppTextStyles.monteseratStyle(
                                color: Colors.lightBlue),
                          ),
                          // TyperAnimatedText(
                          //   "Tech Enthusiast",
                          //   textStyle: AppTextStyles.monteseratStyle(
                          //       color: Colors.lightBlue),
                          // )
                        ],
                        // pause: const Duration(milliseconds: 1000),
                        // displayFullTextOnTap: true,
                        // stopPauseOnTap: true,
                      )
                    ]),
                    Constaints.sizedBox(height: 15),
                    SizedBox(
                        width: size.width * 0.5,
                        child: Text(
                            'asdsadasdasdasdasdasdasdasdasdasdasda'
                            'asdasdasdasdasdasdasdasdasdasdasdasd'
                            'asdasdasdasczxcxvddafasedwaqedwqa',
                            style: AppTextStyles.normalStyle())),
                    Constaints.sizedBox(height: 22),
                    Row(
                      children: [
                        buildSocialButton(asset: AppAssets.github),
                        Constaints.sizedBox(width: 22),
                        buildSocialButton(asset: AppAssets.linkedIn),
                      ],
                    ),
                    Constaints.sizedBox(height: 18),
                    buildmaterialButton(onTap: (){}),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  MaterialButton buildmaterialButton({required VoidCallback onTap,}){
    return MaterialButton(
                        color: AppColors.themeColor,
                        onPressed: onTap,
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        height: 30,
                        minWidth: 130,
                        hoverColor: AppColors.bgColor,
                        splashColor: AppColors.lawgreen,
                        focusElevation: 12,
                        child: Text(
                          'Download CV',
                          style: AppTextStyles.headerTextStyle(),
                        ));
  }
  Ink buildSocialButton({required String asset}) {
    return Ink(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green, width: 3.0),
          color: AppColors.bgColor,
          shape: BoxShape.circle,
        ),
        child: InkWell(
          splashColor: AppColors.lawgreen,
          hoverColor: Colors.white,
          child: CircleAvatar(
            maxRadius: 20,
            backgroundColor: AppColors.bgColor,
            child:
                Image.asset(asset, width: 100, height: 60, fit: BoxFit.contain),
          ),
        ));
  }
}
