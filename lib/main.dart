import 'package:flutter/material.dart';
import 'package:flutter_assignment_4/screens/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment # 4',
      theme: _buildTheme(Brightness.light),
      home: const SplashScreen(),
    );
  }

  //for all text color should be white and backgound color to be 0xFF6b79c0
  ThemeData _buildTheme(brightness) {
    var baseTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(
        primary: Colors.deepPurple,
        onPrimary: Colors.white,
        surface: const Color.fromARGB(255, 44, 56, 117),
      ),
      brightness: brightness,
      useMaterial3: true,
    );

    return baseTheme.copyWith(
      scaffoldBackgroundColor: baseTheme.colorScheme.surface,
      textTheme: GoogleFonts.interTextTheme(baseTheme.textTheme).apply(
        bodyColor: baseTheme.colorScheme.onPrimary,
        displayColor: baseTheme.colorScheme.onPrimary,
      ),
    );
  }
}
