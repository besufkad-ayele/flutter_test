// ignore_for_file: prefer_const_constructors

import 'package:chapter_one/core/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ResturantPage extends StatelessWidget {
  const ResturantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '2 Reviewed Restaurants',
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.darkGrayColor,
            ),
            textAlign: TextAlign.left,
          ),
          Gap(12.h),
          ResturantCard(),
          Gap(12.h),
          ResturantCard(),
        ],
      ),
    ));
  }
}

class ResturantCard extends StatelessWidget {
  const ResturantCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      width: 320.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        border: Border.all(
          color: const Color.fromARGB(255, 83, 83, 83).withOpacity(0.1),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.1),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Carousel Image
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.r),
              topRight: Radius.circular(25.r),
              bottomLeft: Radius.circular(5.r),
              bottomRight: Radius.circular(5.r),
            ),
            child: Container(
              height: 150.h,
              child: PageView(
                children: [
                  Image.asset(
                    'assets/images/food1.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/food2.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/food3.jpg',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          // Price and Rate Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '190 - 570',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Gap(5.w),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5).r,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            border: Border.all(
                              color: Colors.red,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            'BIRR',
                            style: TextStyle(
                              fontSize: 7.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(5.w),
                    Text("Price")
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(5).r,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(38, 255, 102, 0),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5).r,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          border: Border.all(
                            color: Colors.red,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(Icons.star,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            size: 16),
                      ),
                      Gap(5.w),
                      Text("2.3",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w900,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // Restaurant and Icon Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Berlin Bar & Restaurant',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Gap(16.w),
                Icon(
                  Icons.arrow_right_alt,
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // Location Text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 16.sp,
                  color: Colors.grey[600],
                ),
                Text(
                  '123 Main Street, City, Country',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // Review Text
          Container(
            width: 266.w,
            padding: EdgeInsets.all(5).r,
            margin: EdgeInsets.only(left: 8, right: 16).r,
            decoration: BoxDecoration(
              color: AppColors.button_background.withOpacity(0.5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.wallet_giftcard_sharp,
                  size: 16.sp,
                  color: AppColors.primaryColor,
                ),
                Gap(5.w),
                Text(
                  'ከ 4:00 ሰዓት በፊት ቁርስ/ ጁስ ሲጠቀሙ 10% ቅናሽ ያገኛሉ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
