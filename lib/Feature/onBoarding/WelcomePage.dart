import 'package:chapter_one/Feature/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome Page',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0.r),
          child: Card(
            elevation: 78.r,
            color: const Color.fromARGB(106, 255, 255, 255),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: EdgeInsets.all(24.0.r),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Profile test',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.r,
                      fontWeight: FontWeight.w100,
                      color: const Color.fromARGB(255, 215, 136, 0),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Profile(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.person_outlined,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    label: Text(
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'Roboto',
                        ),
                        'Go to Profile Page'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(40, 22, 99, 232),
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.h,
                        vertical: 16.w,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
