import 'dart:ffi';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:daily_wins/constants/constants.dart';
import 'package:daily_wins/features/login/view/login_screen.dart';
import 'package:daily_wins/features/login/view/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;
    final double horizontalPadding = screenWidth * 0.06;
    // final double verticalPadding = screenHeight * 0.04;
    return Scaffold(
      backgroundColor: kAppGreen,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/mountain.png',
                      height: 120,
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'DailyWins',
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Libre Caslon Text',
                            fontSize: 40.0,
                            fontWeight: FontWeight.w800,
                          ),
                          speed: const Duration(milliseconds: 500),
                        ),
                      ],
                      totalRepeatCount: 1,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      horizontalPadding, 20.0, horizontalPadding, 0.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 56.0,
                    child: TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () {
                        Get.to(() => RegisterScreen());
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          color: kAppGreen,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      horizontalPadding, 20.0, horizontalPadding, 0.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 56.0,
                    child: OutlinedButton(
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(
                          const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Get.to(() => LoginScreen());
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
