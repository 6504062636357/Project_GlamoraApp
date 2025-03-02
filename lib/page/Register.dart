import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2CACA), // สีพื้นหลัง

      body: Column(
        children: [
          // AppBar
          Container(
            margin: EdgeInsets.fromLTRB(20, 40, 20, 20), // ระยะห่างจากขอบ
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2.0), // เส้นขอบ
              borderRadius: BorderRadius.circular(30), // ขอบมน
              color: Color(0xFFFDD8E7), // สีพื้นหลัง AppBar
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // จัดเรียง widget
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.menu, color: Colors.deepPurple[400]),
                    onPressed: () {
                      // TODO: Implement Menu
                    },
                  ),
                  Text(
                    'GLAMORA',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple[400],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.person_outline, color: Colors.deepPurple[400]),
                    onPressed: () {
                      // TODO: Implement Profile
                    },
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/logo2.png', // ตรวจสอบ path
                      width: 150,
                      height: 150,
                    ),
                    Text(
                      'GLAMORA',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple[400],
                      ),
                    ),
                    SizedBox(height: 20),

                    // กล่องสีขาวที่มีฟอร์มลงทะเบียน
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Email',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'example@email.com',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                          SizedBox(height: 15),

                          Text(
                            'Password',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Enter your password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                          SizedBox(height: 15),

                          Row(
                            children: <Widget>[
                              Checkbox(
                                value: true, // ค่าเริ่มต้น
                                onChanged: (bool? value) {
                                  // TODO: Implement Checkbox Logic
                                },
                              ),
                              Text('Accept Terms & Conditions'),
                            ],
                          ),
                          SizedBox(height: 20),

                          // ปุ่ม Register
                          SizedBox(
                            width: double.infinity, // ปรับให้กว้างเต็ม
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurple[400],
                                padding: EdgeInsets.symmetric(vertical: 15),
                                textStyle: TextStyle(fontSize: 18),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/HomePage'); // ไปหน้า HomePage
                              },
                              child: Text('Register', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
