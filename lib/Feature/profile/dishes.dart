import 'package:chapter_one/core/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class DishesPage extends StatelessWidget {
  const DishesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16.0).r,
          child: const Align(
            alignment: Alignment.topLeft,
            child: Text(
              '3 Saved Dishes',
              textAlign: TextAlign.start,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(4, (index) {
              return Container(
                width: 140,
                height: 190,
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.primaryColor),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Container(
                  margin: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/food1.png',
                      ),
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4),
                        BlendMode.darken,
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Stack(
                    children: [
                      const Positioned(
                        top: 8,
                        left: 8,
                        child: Icon(Icons.fastfood, color: Colors.blueAccent),
                        //here you can add your icon
                        // SvgPicture.asset(
                        //   'assets/icons/person.svg',
                        //   width: 24,
                        //   height: 24,
                        //   color: AppColors
                        //       .primaryColor, // Optional: Change icon color
                        // ),
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
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'The Goat Cafe',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Row(
                              children: [
                                Text(
                                  '250',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                Gap(12),
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
