import 'package:flutter/material.dart';
import 'package:project1/Onboarding1.dart';
import 'package:project1/Onboarding2.dart';
import 'package:project1/Onboarding3.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(""),
      ),
      extendBodyBehindAppBar: true,
      body: PageView(
        children: [
          Onboarding1(),
          Onboarding2(),
          Onboarding3(),
        ],
      ),
    );
  }
}
