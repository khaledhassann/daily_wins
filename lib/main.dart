import 'package:daily_wins/features/login/view/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Colors.white, selectionHandleColor: Colors.white),
        primaryColor: Color(0xAA4ECCA3),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          activeIndicatorBorder: BorderSide.none,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28.0),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28.0),
            borderSide: const BorderSide(color: Colors.white),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28.0),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}
