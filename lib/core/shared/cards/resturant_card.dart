import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:chapter_one/core/Provider/riverpod.dart';
import 'package:chapter_one/core/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ResturantCard extends ConsumerWidget {
  const ResturantCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final images = ref.watch(riverpodFollowingButton).foodImages;
    return Container(
      padding: const EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 15).r,
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
            blurRadius: 12,
            offset: const Offset(0, 2),
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
            child: SizedBox(
              height: 150.h,
              width: 320.w,
              child: Stack(
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 150.h,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration: const Duration(
                          milliseconds: 800), // Smoother animation
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: false,
                      viewportFraction: 1.0,
                      onPageChanged: (index, reason) {
                        ref
                            .read(riverpodFollowingButton.notifier)
                            .updateCurrentIndex(index);
                      },
                    ),
                    itemCount: images.length,
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        width: 320.w,
                        height: 150.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(images[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    bottom: 10.h,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 4.h),
                        padding: EdgeInsets.symmetric(
                            vertical: 4.h, horizontal: 8.w),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Consumer(
                          builder: (context, ref, child) {
                            final currentIndex = ref
                                .watch(riverpodFollowingButton)
                                .currentRealIndex;
                            return Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: List.generate(
                                    images.length,
                                    (index) => AnimatedContainer(
                                      duration: const Duration(milliseconds: 300),
                                      width: 8.w,
                                      height: 8.h,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 3.w),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: index == currentIndex
                                            ? Colors.white
                                            : Colors.white.withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10.h,
                    right: 11.w,
                    child: Container(
                      width: 35.w,
                      height: 35.h,
                      padding: const EdgeInsets.all(8).r,
                      decoration: BoxDecoration(
                        color: AppColors.iconBackgroundOrange,
                        border: Border.all(
                          color: AppColors.primaryColor,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/check.svg',
                        height: 19.h,
                        width: 19.w,
                      ),
                    ),
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
                    const Text(
                      '190 - 570',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Gap(5.w),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5).r,
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
                    const Text("Price")
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(5).r,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(38, 255, 102, 0),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5).r,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          border: Border.all(
                            color: Colors.red,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.star,
                            color: Color.fromARGB(255, 255, 255, 255),
                            size: 16),
                      ),
                      Gap(5.w),
                      Text("2.3",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors.black,
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
                const Icon(
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
                SvgPicture.asset('assets/icons/location2.svg',
                    height: 16.h, width: 16.w, color: AppColors.black),
                Gap(4.w),
                Text(
                  'Gerji Condominum',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
                Gap(8.w),
                SvgPicture.asset(
                  'assets/icons/location2.svg',
                  height: 16.h,
                  width: 16.w,
                  color: AppColors.black,
                ),
                Gap(4.w),
                const Text(
                  'Near Tadele Garage',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.textTertiaryColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // Review Text
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5).r,
                  margin: const EdgeInsets.only(left: 8, top: 4).r,
                  decoration: BoxDecoration(
                    color: AppColors.textbackground,
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
                      Expanded(
                        child: Text(
                          'ከ 4:00 ሰዓት በፊት ቁርስ/ጁስ ሲጠቀሙ 10% ቅናሽ ያገኛሉ',
                          style: TextStyle(
                            fontSize: 10.sp,
                            overflow: TextOverflow.fade,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(8.w), // Add gap between the containers
              Container(
                width: 36.w,
                height: 24.h,
                padding: const EdgeInsets.all(4).r,
                margin: const EdgeInsets.only(
                  right: 0,
                ).r,
                decoration: BoxDecoration(
                  color: AppColors.iconBackgroundOrange,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.r),
                    topRight: Radius.circular(0.r),
                    bottomLeft: Radius.circular(15.r),
                    bottomRight: Radius.circular(0.r),
                  ),
                ),
                child: SvgPicture.asset(
                  'assets/icons/gift.svg',
                  height: 24.h,
                  width: 24.w,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
