// ignore_for_file: prefer_const_constructors

import 'package:chapter_one/core/shared/bottomsheet/bottomsheet_content.dart';
import 'package:chapter_one/Feature/profile/tabs/dishes.dart';
import 'package:chapter_one/Feature/profile/tabs/recent.dart';
import 'package:chapter_one/Feature/profile/tabs/resturant.dart';
import 'package:chapter_one/core/Provider/riverpod.dart';
import 'package:chapter_one/core/constant/appgradiant.dart';
import 'package:chapter_one/core/constant/constants.dart';
import 'package:chapter_one/core/shared/buttons/custom_tabBar.dart';
import 'package:chapter_one/core/shared/buttons/follow_button.dart';
import 'package:chapter_one/core/shared/cards/message_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class Profile extends ConsumerWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Lidiya Tesfaye',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 80.r,
                height: 80.r,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient:
                      AppGradients.platinumGradiant, // Platinum gradient ring
                ),
                child: Padding(
                  padding:
                      EdgeInsets.all(3.r), // Adjust padding for ring thickness
                  child: CircleAvatar(
                    radius: 37.r,
                    backgroundColor: Colors.white, // Inner white border
                    child: CircleAvatar(
                      radius: 35.r,
                      backgroundImage:
                          const AssetImage('assets/images/lidiya-tesfaye.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              // Membership description
              Text(
                'Member since February 2025s',
                style: TextStyle(
                    color: AppColors.textSecondaryColor,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400),
              ),
              Gap(20.h),
              // Row with button, Instagram icon, and champion icon
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FollowButton(
                    color: AppColors.buttonPrimaryColor,
                    width: 70.w,
                    height: 40.h,
                    label: "Follow",
                    onPressed: () => ref
                        .read(riverpodFollowingButton.notifier)
                        .toggleIsFollowing(),
                  ),
                  Gap(8),
                  Container(
                    padding: EdgeInsets.only(
                      left: 12.r,
                      right: 12.r,
                      top: 9.r,
                      bottom: 9.r,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                          color: AppColors.iconPrimaryBorderColor, width: 1.w),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/instagram.svg',
                      width: 24,
                      height: 24,
                      color: Colors.black, // Optional: Change icon color
                    ), // Instagram icon
                  ),
                  Gap(8),
                  Container(
                    padding: EdgeInsets.only(
                      left: 12.r,
                      right: 12.r,
                      top: 9.r,
                      bottom: 9.r,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xFFD4D4D4), width: 1.w),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/cup-big.svg',
                      width: 24,
                      height: 24,
                      color:
                          AppColors.primaryColor, // Optional: Change icon color
                    ), // Champion icon Instagram icon
                  ),
                ],
              ),
              Gap(20.h),
              // Row with flowers, following, and membership badge
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        '0',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      Text('Followers',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '125',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      Text('Following',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      ShaderMask(
                        shaderCallback: (bounds) {
                          return AppGradients.platinumGradiant.createShader(
                            Rect.fromLTWH(
                              0,
                              0,
                              bounds.width,
                              bounds.height,
                            ),
                          );
                        },
                        child: Text(
                          'Platinum',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      Text('Member badge',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                ],
              ),
              Gap(20.h),
              Divider(
                thickness: 5.r,
                color: AppColors.graylight,
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, top: 12.h, bottom: 12.h).w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/heart.svg',
                      width: 24,
                      height: 24,
                      color: Colors.black, // Optional: Change icon color
                    ),
                    Gap(15.h),
                    Text(
                      "Actvities",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 12.sp),
                    )
                  ],
                ),
              ),
              Container(
                child: CustomTabBar(
                  tabs: ref.read(riverpodFollowingButton).tabs,
                  selectedIndex:
                      ref.read(riverpodFollowingButton).selectedIndex,
                  onTabSelected: (index) {
                    ref
                        .read(riverpodFollowingButton.notifier)
                        .toggleSelectedIndex(index);
                  },
                ),
              ),
              _getTabContent(context, ref),
            ],
          ),
        ),
      ),
    );
  }
}

class CircularImageAvatar extends StatelessWidget {
  const CircularImageAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 80.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white, // Outer white border
      ),
      child: Container(
        width: 80.w,
        height: 80.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.orange, // Inner orange border
        ),
        child: CircleAvatar(
          radius: 70.r,
          backgroundColor: Colors.orange,
          child: CircleAvatar(
            radius: 60.r,
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            child: CircleAvatar(
              radius: 58.r,
              backgroundImage: AssetImage(
                  'assets/images/lidiya-tesfaye.png'), // Replace with your image path
            ),
          ),
        ),
      ),
    );
  }
}

// Content for the selected tab
Widget _getTabContent(BuildContext context, WidgetRef ref) {
  if (!ref.watch(riverpodFollowingButton).isFollowing) {
    return Column(
      children: [
        Gap(20.h),
        CustomCard(
          icon: SvgPicture.asset(
            'assets/icons/person.svg',
            width: 24,
            height: 24,
            color: AppColors.primaryColor, // Optional: Change icon color
          ),
          title: "Follower only",
          description: "Follow lidiya Tesfaye to see thier recent activities",
          buttonText: "Follow Lidiya Tesfaye",
          onPressed: () {
            if (!ref.watch(riverpodFollowingButton).isFollowing) {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return BottomsheetContent();
                },
              );
            }
            ref.read(riverpodFollowingButton.notifier).toggleIsFollowing();
          },
        ),
      ],
    );
  } else {
    switch (ref.read(riverpodFollowingButton).selectedIndex) {
      case 0:
        return RecentPage(); // Remove Flexible
      case 1:
        return ResturantPage(); // Remove Flexible
      case 2:
        return DishesPage(); // Remove Flexible
      default:
        return Center(
          child: Text(
            'Select a tab to see content',
            style: TextStyle(fontSize: 16.sp),
          ),
        );
    }
  }
}
