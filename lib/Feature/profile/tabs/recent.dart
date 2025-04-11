import 'package:chapter_one/core/constant/constants.dart';
import 'package:chapter_one/core/shared/cards/review_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class RecentPage extends StatelessWidget {
  const RecentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        width: double.infinity, // Ensures the container takes the full width
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:
              CrossAxisAlignment.start, // Aligns children to the left
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.w),
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
            const ReviewCard(),

            Gap(12.h),
            const ReviewCard()
          ],
        ),
      ),
    );
  }
}

