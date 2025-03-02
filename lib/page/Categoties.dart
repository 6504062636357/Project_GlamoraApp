import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {
      "name": "Makeup",
      "icon": Icons.brush,
    },
    {
      "name": "Skin Care",
      "icon": Icons.spa,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF77407F),
      appBar: AppBar(
        backgroundColor: Color(0xFF77407F),
        elevation: 0,
        title: Text("GLAMORA"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // เพิ่มฟังก์ชันการค้นหาที่นี่
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildSearchBar(),
            SizedBox(height: 20),
            _buildCategoryList(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search Your Product",
          border: InputBorder.none,
          icon: Icon(Icons.search),
        ),
      ),
    );
  }

  Widget _buildCategoryList() {
    return Column(
      children: categories.map((category) {
        return _buildCategoryCard(category["name"], category["icon"]);
      }).toList(),
    );
  }

  Widget _buildCategoryCard(String title, IconData iconData) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: Icon(iconData, size: 40, color: Colors.deepPurple),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        onTap: () {
          // ใส่โค้ดนำทางไปหน้าหมวดหมู่นั้นๆ
        },
      ),
    );
  }
}
