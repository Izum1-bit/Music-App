import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_app/features/home_page/view/home_page.dart';
import 'package:music_app/features/library_page/view/library_page.dart';
import 'package:music_app/features/main_shell_page/widgets/bottom_navigation.dart';
import 'package:music_app/features/profile_page/view/profile_page.dart';
import 'package:music_app/features/search_page/view/search_page.dart';

class MainShellPage extends StatefulWidget {
  const MainShellPage({super.key});

  @override
  State<MainShellPage> createState() => _MainShellPageState();
}

class _MainShellPageState extends State<MainShellPage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const SearchPage(),
    const LibraryPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        bottomNavigationBar: BottomNavigation(
          onTabChange: (index) => navigateBottomBar(index),
        ),
        body: SafeArea(child: _pages[_selectedIndex]),
      ),
    );
  }
}
