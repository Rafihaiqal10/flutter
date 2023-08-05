import 'package:flutter/material.dart';
import 'package:project1/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _classController = TextEditingController();
  bool _isObscure = true;

  void _loginButtonPressed() {
    String username = _nameController.text;
    String password = _classController.text;

    if (username.isEmpty || password.isEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text(
            'Username dan Password harus diisi agar login berhasil',
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    }
  }

  void _forgetPasswordButtonPressed() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Forget Password'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Reset Password'),
            ),
          ],
        ),
      ),
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
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.cyan.shade100, Colors.grey.shade300],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              'asset/home.png',
              width: 100,
              height: 100,
            ),
          ),

          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 60.0),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'asset/rocket.png',
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  margin: EdgeInsets.all(4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Masukkan Username',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 13.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.0),
                Container(
                  margin: EdgeInsets.all(4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Masukkan Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        controller: _classController,
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 13.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                            icon: Icon(
                              _isObscure ? Icons.visibility : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: _forgetPasswordButtonPressed, 
                    child: Text(
                      'Forget Password',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),  
                Container(
                  margin: EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: _loginButtonPressed,
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            minimumSize: Size(double.infinity, 40),
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    "By logging in, you agree to our Terms of Service and Privacy Policy.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: -30,
            child: Image.asset(
              'asset/awan.png',
              width: 200,
              height: 80,
            ),
          ),
        ],
      ),
    );
  }
}
