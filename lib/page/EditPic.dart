import 'package:flutter/material.dart';

class EditPic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2CACA), // Background Color
      appBar: AppBar(
        backgroundColor: Color(0xFFF2CACA),
        elevation: 0, // Remove shadow
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black), // Black Back Arrow
          onPressed: () {
            Navigator.pop(context); // Go back to previous screen
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.black), // Black Settings Icon
            onPressed: () {
              // TODO: Implement settings action
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0), // Add some top padding
            child: Icon(Icons.home, size: 40, color: Colors.black), // Black Home Icon
          ),
          SizedBox(height: 20),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 3,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/images/lisa_lipstick.webp', // Use your image here
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'LISA Lalisa',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Lalisa@gmail.com',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // TODO: Implement edit profile action
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple[400],
                padding:
                EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
            child: Text(
              'Edit Profile',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 30),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(30),
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.history, color: Colors.black),
                        SizedBox(width: 10),
                        Text('History', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.black),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.shopping_cart, color: Colors.black),
                        SizedBox(width: 10),
                        Text('My Cart', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.black),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("See Profile Picture"),
            onTap: () {
              // TODO: Implement see profile picture action
            },
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text("Choose Profile Picture"),
            onTap: () {
              // TODO: Implement choose profile picture action
            },
          ),
        ],
      ),
    );
  }
}