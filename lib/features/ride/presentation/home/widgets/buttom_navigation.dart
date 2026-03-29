import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int index;
  final Function(int) onTap;

  const BottomNav({
    super.key,
    required this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: onTap,

      /// ✅ IMPORTANT FIX
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,

      /// Optional but recommended
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,

      items:  [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "হোম",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.car_rental),
          label: "আমার ট্রিপ",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: "মেসেজ",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: "মেনু",
        ),
      ],
    );
  }
}