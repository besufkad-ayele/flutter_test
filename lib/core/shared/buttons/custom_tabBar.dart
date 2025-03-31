import 'package:chapter_one/core/constant/constants.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: null,
        color: AppColors.lightGrayColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: List.generate(tabs.length * 2 - 1, (index) {
          if (index.isOdd) {
            return const VerticalDivider(
              color: Colors.grey,
              thickness: 10,
              width: 10,
              indent: 10,
              endIndent: 10,
            );
          } else {
            return Expanded(child: _buildTab(index ~/ 2));
          }
        }),
      ),
    );
  }

  /// 📌 Single Tab Widget
  Widget _buildTab(int index) {
    bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () => onTabSelected(index),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: isSelected
              ? Border.all(color: Colors.transparent, width: 1)
              : null,
        ),
        child: Center(
          child: Text(
            tabs[index],
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
