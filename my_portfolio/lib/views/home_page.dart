import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/views/about_me.dart';
import 'package:my_portfolio/widgets/profile_animation.dart';

import '../globals/app_buttons.dart';
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
          top: size.height * 0.05,
          // left: size.width * 0.1,
          // right: size.width * 0.1
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FadeInDown(
                        duration: const Duration(milliseconds: 1200),
                        child: Text(
                          "Hello It\'s ME",
                          style: AppTextStyles.monteseratStyle(
                              color: Colors.white),
                        )),
                    Constaints.sizedBox(height: 15),
                    FadeInRight(
                        duration: const Duration(milliseconds: 1400),
                        child: Text(
                          "Nirdesh Pradhan",
                          style: AppTextStyles.headingStyles(),
                        )),
                    Constaints.sizedBox(height: 15),
                    FadeInLeft(
                        duration: const Duration(milliseconds: 1400),
                        child: Row(children: [
                          Text(
                            "And I am a ",
                            style: AppTextStyles.monteseratStyle(
                                color: Colors.white),
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
                        ])),
                    Constaints.sizedBox(height: 15),
                    FadeInDown(
                        duration: const Duration(milliseconds: 1600),
                        child: SizedBox(
                            width: size.width * 0.5,
                            child: Text(
                                'asdsadasdasdasdasdasdasdasdasdasdasda.\n'
                                'asdasdasdasdasdasdasdasdasdasdasdasd',
                                style: AppTextStyles.normalStyle()))),
                    Constaints.sizedBox(height: 22),
                    FadeInUp(
                        duration: const Duration(milliseconds: 1600),
                        child: Row(
                          children: [
                            buildSocialButton(asset: AppAssets.github),
                            Constaints.sizedBox(width: 22),
                            buildSocialButton(asset: AppAssets.linkedIn),
                          ],
                        )),
                    Constaints.sizedBox(height: 18),
                    FadeInUp(
                        duration: const Duration(milliseconds: 1800),
                        child: AppButtons.buildmaterialButton(onTap: () {}, buttonName: 'Download CV'),),
                  ],
                ),
                const ProfileAnimation(),
              ],
            ),
            const SizedBox(
              height: 350,
            ),
      //        Container(
      //         height: 200,
      //         child: SizedBox.expand
      //         (child: Container(
      //           decoration: BoxDecoration(
      //           gradient: LinearGradient(
      //             begin: Alignment.topCenter,
      //             end: Alignment.bottomCenter,
      //             colors: <Color>[
      //               Color.fromARGB(156, 0, 0, 0),
      //               Color.fromRGBO(35, 45, 63, 1 ),
      //             ],
      //             stops: [0.1,1.0],
      //           ),
      // ),
      //         )),
      //       ),
            const AboutMe(),
          ],
        ),
      ),
    );
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
