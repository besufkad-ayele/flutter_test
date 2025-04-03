import 'package:flutter/material.dart';

class AppGradients {
  static const LinearGradient welcomePageGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 246, 217, 217),
      Color.fromARGB(255, 36, 36, 36),
      Color.fromARGB(255, 246, 217, 217),
      Color.fromARGB(255, 115, 15, 15),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const LinearGradient goldenGradiant = LinearGradient(
    colors: [
      Color.fromARGB(255, 246, 217, 217),
      Color.fromARGB(255, 36, 36, 36),
      Color.fromARGB(255, 246, 217, 217),
      Color.fromARGB(255, 115, 15, 15),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient BonzeGradiant = LinearGradient(
    colors: [
      Color.fromARGB(255, 246, 217, 217),
      Color.fromARGB(255, 36, 36, 36),
      Color.fromARGB(255, 246, 217, 217),
      Color.fromARGB(255, 115, 15, 15),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient silverGradiant = LinearGradient(
    colors: [
      Color.fromARGB(255, 246, 217, 217),
      Color.fromARGB(255, 36, 36, 36),
      Color.fromARGB(255, 246, 217, 217),
      Color.fromARGB(255, 115, 15, 15),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const LinearGradient diamondGradiant = LinearGradient(
    colors: [
      Color.fromARGB(255, 246, 217, 217),
      Color.fromARGB(255, 36, 36, 36),
      Color.fromARGB(255, 246, 217, 217),
      Color.fromARGB(255, 115, 15, 15),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const LinearGradient platinumGradiant = LinearGradient(
    colors: [
      Color(0xff487dff),
      Color(0xFF51a9ff),
    ],
    begin: Alignment.topCenter,
    end: Alignment.center,
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