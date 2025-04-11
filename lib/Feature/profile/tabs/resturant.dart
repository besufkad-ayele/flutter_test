// ignore_for_file: prefer_const_constructors


import 'package:chapter_one/core/Provider/riverpod.dart';
import 'package:chapter_one/core/constant/constants.dart';
import 'package:chapter_one/core/shared/cards/resturant_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ResturantPage extends ConsumerWidget {
  const ResturantPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final images = ref.watch(riverpodFollowingButton).foodImages;

    return SingleChildScrollView(
        child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 30.0,
            ).r,
            child: Text(
              '2 Reviewed Restaurants',
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textSecondaryColor,
              ),
              textAlign: TextAlign.left,
            ),
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

