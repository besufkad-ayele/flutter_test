import 'package:chapter_one/core/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabBar extends ConsumerWidget {
  final List<String> tabs;
  final int selectedIndex;
  final Function(int) onTabSelected;

  const CustomTabBar({
    super.key,
    required this.tabs,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 310.w,
      height: 35.h,
      margin: EdgeInsets.symmetric(horizontal: 25.h),
      padding: EdgeInsets.all(2.h),
      decoration: BoxDecoration(
        border: null,
        color: AppColors.lightGrayColor,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Row(
        children: List.generate(
          tabs.length * 2 - 1,
          (index) {
            if (index.isOdd) {
              return VerticalDivider(
                color: AppColors.darkGrayColor,
                thickness: 1,
                width: 1,
                indent: 10.r,
                endIndent: 10.r,
              );
            } else {
              return Expanded(child: _buildTab(index ~/ 2));
            }
          },
        ),
      ),
    );
  }

  Widget _buildTab(int index) {
    bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () => onTabSelected(index),
      child: Container(
        // padding:  EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(10.r),
          border: isSelected
              ? Border.all(color: Colors.transparent, width: 1.w)
              : null,
        ),
        child: Center(
          child: Text(
            tabs[index],
            style: TextStyle(
              fontSize: 10.sp,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
