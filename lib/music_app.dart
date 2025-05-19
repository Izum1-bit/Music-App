import 'package:flutter/material.dart';
import 'package:music_app/features/main_shell_page/view/main_shell_page.dart';
import 'package:music_app/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: MainShellPage(),
    );
  }
}
