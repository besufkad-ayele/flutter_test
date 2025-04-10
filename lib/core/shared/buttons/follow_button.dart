import 'package:chapter_one/core/shared/bottomsheet/bottomsheet_content.dart';
import 'package:chapter_one/core/Provider/riverpod.dart';
import 'package:chapter_one/core/constant/constants.dart';
import 'package:chapter_one/core/shared/animation/loding_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FollowButton extends ConsumerWidget {
  final Color color;
  final double width;
  final double height;
  final String label;
  final Function onPressed;
  final Color? borderColor;

  const FollowButton(
      {super.key,
      required this.color,
      required this.width,
      required this.height,
      required this.label,
      required this.onPressed,
      this.borderColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isLoading = ref.watch(riverpodFollowingButton).isLoading;
    bool isFollowing = ref.watch(riverpodFollowingButton).isFollowing;
    void handlePress() {
      ref.read(riverpodFollowingButton).toggleIsFollowing();
      if (!isFollowing) {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return const BottomsheetContent();
          },
        );
      }
    }

    return ElevatedButton(
      onPressed: handlePress,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12).r,
          side: BorderSide(
            color: isFollowing
                ? AppColors.iconPrimaryBorderColor
                : AppColors.buttonBorderred,
            width: 1.5.r,
          ),
        ),
        minimumSize: Size(width, height),
        backgroundColor: isFollowing ? AppColors.white : color,
      ),
      child: isLoading
          ? SizedBox(
              width: 24.w,
              height: 24.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: ThreeDotLoading(),
                      // CircularProgressIndicator(
                      //   color: AppColors.textWhiteColor,
                      //   strokeWidth: 1.0,
                      // ),
                    ),
                  )
                ],
              ),
            )
          : Text(
              isFollowing ? "Following" : label,
              style: TextStyle(
                color: isFollowing
                    ? AppColors.black
                    : AppColors.white,
                fontWeight: FontWeight.w700,
                fontSize: 12.r,
              ),
            ),
    );
  }
}
