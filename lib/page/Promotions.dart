import 'package:flutter/material.dart';

class PromotionsPage extends StatelessWidget {
  final List<String> promotions = [
    "Get 3 Free 1",
    "Get 20% OFF on your first purchase!",
    "Skincare Set: Buy 3, Save 30%!",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF77407F), // สีพื้นหลังม่วง
      appBar: AppBar(
        backgroundColor: Color(0xFF77407F),
        elevation: 0,
        title: Row(
          children: [
            Icon(Icons.sunny, size: 28, color: Colors.white),
            SizedBox(width: 10),
            Text(
              "Promotions",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: promotions
              .map((promo) => _buildPromoCard(promo))
              .toList(),
        ),
      ),
    );
  }

  Widget _buildPromoCard(String text) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: EdgeInsets.only(bottom: 16),
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          // ใส่โค้ดนำทางไปหน้ารายละเอียดโปรโมชั่น
        },
      ),
    );
  }
}
