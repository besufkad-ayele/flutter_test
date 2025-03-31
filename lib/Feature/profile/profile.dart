// ignore_for_file: prefer_const_constructors

import 'package:chapter_one/Feature/onBoarding/WelcomePage.dart';
import 'package:chapter_one/Feature/profile/bottomsheet_content.dart';
import 'package:chapter_one/core/constant/constants.dart';
import 'package:chapter_one/core/shared/buttons/custom_tabBar.dart';
import 'package:chapter_one/core/shared/buttons/follow_button.dart';
import 'package:chapter_one/core/shared/cards/message_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final List<String> tabs = ["Recent", "Resturant", "Dishes"];

  int _selectedIndex = 0;
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tomas',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.h),
          // TODO: Add a gradient to the circle make it
          Container(
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
          ),
          SizedBox(height: 10.h),
          // Membership description
          Text(
            'Member since February 2025s',
            style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),
          ),
          Gap(20.h),
          // Row with button, Instagram icon, and champion icon
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FollowButton(
                  color: AppColors.buttonColor,
                  width: 70.w,
                  height: 40.h,
                  label: "Follow",
                  onPressed: () {
                    setState(() {
                      isFollowing = !isFollowing;
                    });
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return BottomsheetContent();
                      },
                    );
                    return ('pressed follow');
                  }),
              Gap(8),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Color(0xFFD4D4D4), width: 1.w),
                ),
                child: Icon(Icons.camera_alt,
                    color: Colors.black), // Instagram icon
              ),
              Gap(8),
              Container(
                padding: EdgeInsets.all(12),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Color(0xFFD4D4D4), width: 1.w),
                ),
                child: const Icon(Icons.emoji_events,
                    color: Colors.amber), // Champion icon Instagram icon
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
                  Text(
                    //TODO: Add a gradient to the text make it more appealing
                    'Gold',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      foreground: Paint()
                        ..shader = LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xFFFFC657), Color(0xFFFF9800)],
                        ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
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
          Gap(10.h),
          Divider(
            thickness: 5.r,
            indent: 2.w,
            endIndent: 2.w,
            color: AppColors.lightGrayColor,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.monitor_heart_outlined,
                  color: AppColors.blackColor,
                ),
                Gap(10),
                Text(
                  "Actvities",
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
                )
              ],
            ),
          ),
          CustomTabBar(
            tabs: tabs,
            selectedIndex: _selectedIndex,
            onTabSelected: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          _getTabContent(
            isFollowing: isFollowing,
            selectedIndex: _selectedIndex,
          ),
          // CustomCard(
          //   icon: Icons.person_add,
          //   title: "Follower only",
          //   description: "Follow Tomas to see thier recent activities",
          //   buttonText: "Follow Thomas",
          //   onPressed: () {
          //     print("Button Pressed!");
          //   },
          // ),
        ],
      ),
    );
  }
}

// Content for the selected tab
Widget _getTabContent({
  required int selectedIndex,
  required bool isFollowing,
}) {
  if (!isFollowing) {
    return CustomCard(
      icon: Icons.person_add,
      title: "Follower only",
      description: "Follow Tomas to see thier recent activities",
      buttonText: "Follow Thomas",
      onPressed: () {
        print("Button Pressed!");
      },
    );
  } else {
    switch (selectedIndex) {
      case 0:
        // return Flexible(child: WelcomePage());
        return Flexible(
          child: Text('Recent content'),
        );
      case 1:
        return Text("Restaurant content");
      case 2:
        return Text("Dishes content");
      default:
        return Container();
    }
  }
}
