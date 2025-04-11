import 'package:chapter_one/core/constant/appgradiant.dart';
import 'package:chapter_one/core/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class DishesPage extends StatelessWidget {
  const DishesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(20.h),
        Padding(
          padding: const EdgeInsets.only(left: 40.0).r,
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              '3 Saved Dishes',
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textSecondaryColor,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Gap(20.h),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(4, (index) {
              return Container(
                width: 140,
                height: 190,
                margin: const EdgeInsets.symmetric(horizontal: 10.0).r,
                decoration: BoxDecoration(
                  gradient: AppGradients.goldenGradiant,
                  border: Border.all(
                    color: AppColors.white,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  margin: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: const AssetImage(
                        'assets/images/food1.png',
                      ),
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4),
                        BlendMode.darken,
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 8,
                        left: 8,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/goat.jpg',
                            fit: BoxFit.cover,
                            width: 15.w,
                            height: 15.h,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 12,
                        left: 8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Frappuccino',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'The Goat Cafe',
                              style: TextStyle(
                                  fontSize: 10.sp, color: Colors.white),
                            ),
                            Row(
                              children: [
                                Text(
                                  '250',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                                Gap(10.w),
                                Container(
                                  padding: const EdgeInsets.all(4).r,
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
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
