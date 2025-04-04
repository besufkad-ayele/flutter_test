// ignore_for_file: prefer_const_constructors

import 'package:chapter_one/core/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class BottomsheetContent extends StatelessWidget {
  const BottomsheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      padding: EdgeInsets.all(24).r,
      child: Column(
        children: [
          Text(
            'Rank on Shewaber',
            style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 8),
          SvgPicture.asset(
            'assets/icons/cup-big.svg',
            width: 75.w,
            height: 75.h,
            color: AppColors.primaryColor, // Optional: Change icon color
          ),
          const SizedBox(height: 8),
          const Text(
            'Lidiya Tesfaye',
            style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10).r,
                      child: Text(
                        '#19',
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
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
                color: const Color.fromARGB(214, 252, 53, 8),
                thickness: 1,
                width: 20.w,
                indent: 10.h,
                endIndent: 10.h,
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10).r,
                      child: Text(
                        '#25',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text(
                      'Rank by Invitation',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(overflow: TextOverflow.fade),
                    ),
                  ],
                ),
              ),
              VerticalDivider(
                // Add this VerticalDivider
                color: const Color.fromARGB(214, 252, 53, 8),
                thickness: 1,
                width: 20.w,
                indent: 10.h,
                endIndent: 10.h,
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10).r,
                      child: Text(
                        '#789',
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
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
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(315.w, 50.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: AppColors.graylight,
                  width: 1.r,
                ),
              ),
              backgroundColor: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(''),
                Text(
                  "View Leaderboard",
                  style: TextStyle(color: AppColors.black),
                ),
                Icon(Icons.arrow_forward, color: AppColors.black, size: 16.sp),
              ],
            ),
          )
        ],
      ),
    );
  }
}
