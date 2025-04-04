import 'dart:ui';

import 'package:chapter_one/core/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // avatar name and reviewd resturant
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //This is for the avarter aligning
            Container(
              width: 80.w,
              height: 70.h,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      radius: 31.r,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 30.r,
                        backgroundImage:
                            const AssetImage('assets/images/food1.png'),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: CircleAvatar(
                      radius: 31.r,
                      backgroundColor: AppColors.white,
                      child: CircleAvatar(
                        radius: 30.r,
                        backgroundImage: const AssetImage(
                            'assets/images/lidiya-tesfaye.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gap(10.w),
            //Name and review
            // Aligning the text to the start
            Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Aligns to the start
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Lidya Tesfaye',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                    ),
                    Container(
                      width: 3.w,
                      height: 3.h,
                      margin: EdgeInsets.only(right: 5.w, left: 5.w),
                      decoration: BoxDecoration(
                        color: AppColors.graylight,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                    ),

                    //Todos: make it silver color
                    SvgPicture.asset(
                      'assets/icons/review.svg',
                      width: 12.w,
                      height: 12.h,
                      color: AppColors.gray, // Optional: Change icon color
                    ),
                  ],
                ),
                Gap(5.h),
                Row(
                  children: [
                    Gap(5.w),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Reviewed ',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                          ),
                        ),
                        Text(
                          'Elfign Restaurant ',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Gap(10.h),
            // This is for the Rating Icon
          ],
        ),
        Gap(10.h),
        // This is for the review Icon
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: List.generate(5, (index) {
              return Container(
                  margin: EdgeInsets.all(2.r),
                  padding: EdgeInsets.all(5.r),
                  decoration: BoxDecoration(
                    color: index < 4 ? AppColors.primaryColor : Colors.white,
                    border: Border.all(
                      color: index < 4 ? Colors.transparent : AppColors.gray,
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius:
                        BorderRadius.circular(7.r), // 2px rounded corners
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/star.svg',
                    width: 12.w,
                    height: 12.h,
                    color: index < 4
                        ? AppColors.white
                        : AppColors.iconPrimaryBorderColor,
                  ));
            }),
          ),
        ),
        Gap(10.h),
        Text(
          'The food was delicious and well-prepared, with a perfect balance of flavors.',
          style: TextStyle(
            fontSize: 12.sp,
            color: AppColors.black,
          ),
        ),
        Gap(15.h),
        // This is for the text reviewd
        Text(
          '12 hours ago',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.gray,
          ),
        ),
      ],
    );
  }
}
