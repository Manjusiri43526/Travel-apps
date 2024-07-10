import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/screens/onboarding/onboarding_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const OnboardingPage();
      }));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF24BAEC),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 236,
            ),
            Image.asset("assets/images/travel_logo.png"),
            const SizedBox(
              height: 236,
            ),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 34.0,
                fontFamily: "abcya"
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('Travenor'),
                ],
                isRepeatingAnimation: false,
                onTap: () {
                  print("Tap Event");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
