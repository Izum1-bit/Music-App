import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class BottomNavigation extends StatelessWidget {
  BottomNavigation({super.key, required this.onTabChange});

  void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),

      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        tabBackgroundColor: Colors.grey.withValues(alpha: 0.1),
        curve: Curves.decelerate,
        tabBorderRadius: 10,
        color: Colors.grey[500],
        activeColor: Color.fromARGB(255, 128, 107, 181),

        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(icon: Icons.home_outlined, text: 'Home'),
          GButton(icon: Icons.search, text: 'Search'),
          GButton(icon: Icons.library_music, text: 'Library'),
          GButton(icon: Icons.account_circle, text: 'Profile'),
        ],
      ),
    );
  }
}
