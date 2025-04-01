import 'package:chapter_one/Feature/onBoarding/WelcomePage.dart';
import 'package:chapter_one/core/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 720),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Shewaber Profile Test',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: GoogleFonts.poppins().fontFamily,
            colorScheme: ColorScheme.fromSeed(
                seedColor: AppColors.backgroundColor,
                surface: AppColors.backgroundColor),
            useMaterial3: true,
          ),
          home: const WelcomePage(),
        );
      },
    );
  }
}
