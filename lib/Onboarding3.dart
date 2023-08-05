import 'package:flutter/material.dart';
import 'package:project1/logindart.dart';


class Onboarding3 extends StatelessWidget {

  void _goToLoginPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
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
                    'asset/ortd.png',
                  ),
                ),
              ),
              SizedBox(height: 50),
              Text(
                "Dapatkan Summary data dalam satu ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "aplikasi",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 2),
              Text(
                "Kemudahan mengakses seluruh data ",
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
