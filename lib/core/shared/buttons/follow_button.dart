import 'package:chapter_one/core/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FollowButton extends StatefulWidget {
  final Color color;
  final double width;
  final double height;
  final String label;
  final Function onPressed;

  const FollowButton({
    super.key,
    required this.color,
    required this.width,
    required this.height,
    required this.label,
    required this.onPressed,
  });

  @override
  State<FollowButton> createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  bool isLoading = false;
  bool isFollowing = false;

  void handlePress() async {
    setState(() {
      isLoading = true;
    });

    await Future.delayed(Duration(seconds: 1));

    setState(() {
      isLoading = false;
      isFollowing = true;
    });

    widget.onPressed();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : handlePress,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12).r,
          side: BorderSide(
            color: isFollowing ? Colors.grey : AppColors.borderColor,
            width: 1.5.r,
          ),
        ),
        minimumSize: Size(widget.width, widget.height),
        backgroundColor: isFollowing ? AppColors.whiteColor : widget.color,
      ),
      child: isLoading
          ? SizedBox(
              width: 24.w,
              height: 24.h,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: CircularProgressIndicator(
                        color: AppColors.textWhiteColor,
                        strokeWidth: 1.0,
                      ),
                    ),
                  )
                ],
              ),
            )
          : Text(
              isFollowing ? "Following" : widget.label,
              style: TextStyle(
                color: AppColors.blackColor,
                fontWeight: FontWeight.w700,
                fontSize: 12.r,
              ),
            ),
    );
  }
}
