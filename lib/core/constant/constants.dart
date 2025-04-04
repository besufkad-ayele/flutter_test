import 'package:flutter/material.dart';

//here create a class for the constants

class AppColors {
  //BUTTON COLORS
  static const Color buttonPrimaryColor = Color(0xFFFF6600);
  static const Color buttonSecondaryColor = Color(0xFFFFFFFF);
  static const Color buttonBorderorange = Color(0xFFFF9800);
  static const Color buttonBorderred = Color(0xFFFF0000);

  //icon
  static const Color iconPrimaryColor = Color(0xFFFF6600);
  static const Color iconPrimaryBorderColor = Color(0xFFD4D4D4);
  static const Color iconBackgroundOrange = Color(0xCCFF9800);

  //PRIMARY COLORS
  static const Color white = Color(0xFFFFFFFF);
  static const Color whiteopacity = Color(0x80FFFFFF);
  static const Color white25opacity = Color(0x40FFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color gray = Color(0xFFCCCCCC);
  static const Color grayopacity = Color(0x80CCCCCC);
  static const Color graylight = Color(0xFFD9D9D9);
  static const Color graylightopacity40 = Color(0x66D9D9D9);
  static const Color graylightopacity25 = Color(0x40D9D9D9);
  static const Color primaryColor = Color(0xFFFF6600);
  static const Color lightgrayBackground = Color(0xFFD4D4D4);
  static const Color lightgrayBackground40opacity =
      Color(0x66D4D4D4); // 40% opacity of light gray background
  static const Color lightgrayBackground25opacity = Color(0x40D4D4D4); // 25% opacity of light gray background
  static const Color transparent = Color(0x00000000);

//TEXT COLORS
  static const Color textPrimaryColor = Color(0xFF000000);
  static const Color textSecondaryColor = Color(0xFF666666);
  static const Color textTertiaryColor = Color(0xFF363636);

  static const Color textbackground = Color(0x80FF9800);

// //ERROR COLORS
//   static const Color errorColor = Color(0xFFFF0000);
//   static const Color successColor = Color(0xFF00FF00);
//   static const Color warningColor = Color(0xFFFFFF00);
//   static const Color infoColor = Color(0xFF0000FF);
}

class AppStrings {
  static const String appName = "Shewaber Profile Test";
  static const String welcomeMessage = "Welcome to Shewaber!";
  static const String profileTitle = "Profile";
  static const String membershipDescription = "Membership Description";
  static const String clickMeButton = "Click Me";

  static const String errorMessage = "An error occurred. Please try again.";
  static const String successMessage = "Operation successful!";
  static const String warningMessage = "This is a warning message.";
  static const String infoMessage = "This is an informational message.";

  static const String buttonText = "Click Me";
}
