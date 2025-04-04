import 'package:flutter/material.dart';

class AppGradients {
  //PLATINUM GRADIANT
  static const LinearGradient platinumGradiant = LinearGradient(
    colors: [
      Color(0xff487dff),
      Color(0xFF51a9ff),
    ],
    begin: Alignment.topCenter,
    end: Alignment.center,
  );

//Golden Gradiant
  static const LinearGradient goldenGradiant = LinearGradient(
    colors: [
      Color(0xFFFBCE0F),
      Color(0XFF9800),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

//RUBY GRADIANT
  static const LinearGradient rubyGradiant = LinearGradient(
    colors: [
      Color(0xFFE0115F),
      Color(0xFFFF6600),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

//Silver Gradiant
  static const LinearGradient silverGradiant = LinearGradient(
    colors: [
      Color(0xFFBFBFBF),
      Color(0xFFAFAFAF),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient diamondGradiant = LinearGradient(
    colors: [
      Color.fromARGB(255, 246, 217, 217),
      Color.fromARGB(255, 36, 36, 36),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient BorderGradiant = LinearGradient(
    colors: [
      Color(0xfffbce0f),
      Color(0xFFff9800),
    ],
    begin: Alignment.topCenter,
    end: Alignment.center,
  );

  static const LinearGradient blackGradiant = LinearGradient(
    colors: [
      Color.fromARGB(255, 246, 217, 217),
      Color.fromARGB(255, 36, 36, 36),
      Color.fromARGB(255, 246, 217, 217),
      Color.fromARGB(255, 115, 15, 15),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient redGradiant = LinearGradient(
    colors: [
      Color.fromARGB(255, 246, 217, 217),
      Color.fromARGB(255, 36, 36, 36),
      Color.fromARGB(255, 246, 217, 217),
      Color.fromARGB(255, 115, 15, 15),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}



// child: ShaderMask(
//             shaderCallback: (bounds) {
//               return AppGradients.platinumGradiant.createShader(Rect.fromLTWH(
//                 0,
//                 0,
//                 bounds.width,
//                 bounds.height,
//               ));
//             },
//             child: const Text(
//               'Welcome Page',
//               style: TextStyle(
//                 fontSize: 24,
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),