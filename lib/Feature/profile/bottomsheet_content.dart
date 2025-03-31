// ignore_for_file: prefer_const_constructors

import 'package:chapter_one/Feature/onBoarding/WelcomePage.dart';
import 'package:chapter_one/core/constant/constants.dart';
import 'package:chapter_one/core/shared/buttons/follow_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BottomsheetContent extends StatelessWidget {
  const BottomsheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24).r,
      child: Column(
        children: [
          Text(
            'Rank on Shewaber',
            style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 8),
          const Icon(Icons.person, color: AppColors.primaryColor, size: 75),
          const SizedBox(height: 8),
          const Text(
            'Thomas',
            style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(10).r,
                        child: Text(
                          '#19',
                          textAlign: TextAlign.center,
                        )),
                    const Text(
                      'Rank by Follwers',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(overflow: TextOverflow.fade),
                    ),
                  ],
                ),
              ),
              VerticalDivider(
                color: const Color.fromARGB(215, 2, 5, 0),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(10).r,
                        child: Text(
                          '#19',
                          textAlign: TextAlign.center,
                        )),
                    const Text(
                      'Rank by Invitation',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(overflow: TextOverflow.fade),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(10).r,
                        child: Text(
                          '#19',
                          textAlign: TextAlign.center,
                        )),
                    const Text(
                      'Rank by Reviews',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(overflow: TextOverflow.fade),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(80.h),
          FollowButton(
            onPressed: () {
              // Add your button action here
            },
            label: 'Custom Button',
            color: Colors.transparent,
            width: 100,
            height: 40,
          ),
        ],
      ),
    );
  }
}
