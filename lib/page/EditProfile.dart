import 'package:flutter/material.dart';
import 'MyProfile.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController passwordController = TextEditingController();
  String passwordMessage = "";
  Color messageColor = Colors.red;

  void validatePassword(String value) {
    setState(() {
      if (value.length < 8) {
        passwordMessage = "Password should contain at least 8 characters!";
        messageColor = Colors.red;
      } else {
        passwordMessage = "Password is available";
        messageColor = Colors.green;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2CACA),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/lisa_lipstick.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('LISA Lalisa',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    Text('Lalisa@gmail.com', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("Password", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onChanged: validatePassword,
              ),
              SizedBox(height: 5),
              Text(passwordMessage, style: TextStyle(color: messageColor)),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple[400],
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => MyProfilePage()),
                    );
                  },
                  child: Text('Confirm', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
