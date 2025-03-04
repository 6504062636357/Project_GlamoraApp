import 'package:flutter/material.dart';
import 'Register.dart'; // นำเข้า RegisterPage
import 'package:http/http.dart' as http;
class SignUpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2CACA),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // ✅ เพิ่มโลโก้ด้านบน
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/logo2.png',
                      width: 200,
                      height: 200,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'GLAMORA',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            blurRadius: 5.0,
                            color: Colors.black26,
                            offset: Offset(2.0, 2.0),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),

              // ✅ Label: Username
              Text(
                "Username",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Your Name (A-Z, a-z, 0-9, _)*',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                ),
              ),
              SizedBox(height: 20),

              // ✅ Label: Password
              Text(
                "Password",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter Your Password (A-Z, a-z, 0-9, _)*',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                ),
              ),
              SizedBox(height: 20),
              // ✅ ปุ่ม Log In

              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0x9B431D60), // สีปุ่มม่วงเข้ม
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    textStyle: TextStyle(fontSize: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/HomePage'); // ไปหน้า HomePage
                  },
                  child: Text('Log In', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 20),

              // ✅ ลิงก์ Sign Up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Create an account "),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Color(0x9B431D60),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(" now"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
