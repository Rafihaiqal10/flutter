import 'package:flutter/material.dart';
import 'package:project1/logindart.dart';

class Onboarding2 extends StatelessWidget {
  void _goToLoginPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()), // Navigates to Onboarding2
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(""),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.white, Colors.white],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 0),
              Align(
                alignment: Alignment.topCenter,
                child: FractionallySizedBox(
                  widthFactor: 0.7,
                  child: Image.asset(
                    'asset/huma.png',
                  ),
                ),
              ),
              SizedBox(height: 90),
              Text(
               "Kerjakan semua tugas dengan mudah",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 2),
              Text(
                "kerjakan semua tugas dalam satu genggaman tangan",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _goToLoginPage(context),
                child: Text(
                  "GET STARTED  ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
