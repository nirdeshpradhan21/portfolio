import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_style.dart';

class AppButtons {
  static MaterialButton buildmaterialButton({
    required VoidCallback onTap,
    required String buttonName,
  }) {
    return MaterialButton(
        color: AppColors.themeColor,
        onPressed: onTap,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
          buttonName,
          style: AppTextStyles.headerTextStyle(),
        ));
  }
}
