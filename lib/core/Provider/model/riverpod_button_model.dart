import 'package:chapter_one/Feature/profile/bottomsheet_content.dart';
import 'package:flutter/material.dart';

class RiverpodButtonState extends ChangeNotifier {
  bool isLoading = false;
  bool isFollowing = false;
  int selectedIndex = 0;

  final List<String> tabs = ["Recent", "Resturant", "Dishes"];
  final List<String> foodImages = [
    "assets/images/food1.png",
    "assets/images/food2.jpg",
    "assets/images/food1.png",
    "assets/images/food2.jpg",
  ];
  void toggleSelectedIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  void toggleIsFollowing() async {
    isLoading = true;

    notifyListeners();

    await Future.delayed(const Duration(seconds: 1));

    isLoading = false;
    isFollowing = !isFollowing;
    notifyListeners();
  }
}
