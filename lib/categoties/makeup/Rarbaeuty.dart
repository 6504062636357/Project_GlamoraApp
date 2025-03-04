import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title:
            Text("Rare Beauty", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              // Implement share functionality
            },
          )
        ],
      ),
      body: Container(
        color: Colors.pink[50],
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black12),
              ),
              child: Image.network(
                'https://image-optimizer-th.production.sephora-asia.net/images/product_images/closeup_1_Product_840122900037-Rare-Beauty-Soft-Pinch-Liquid-Blush-Grateful_2ba3b88a7cfc09146d5d7fa0f5da9c37172e8b4f_1636606903.png', // Replace with your image URL
                height: 200,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Soft Pinch Liquid Blush • 7.5ml",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow[700]),
                Text(" 4.8", style: TextStyle(fontSize: 16)),
                Text(" (17,433 Reviews)",
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
              ],
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Color", style: TextStyle(fontSize: 16)),
            ),
            Row(
              children: [
                for (int i = 0; i < 4; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CircleAvatar(
                      backgroundColor: [
                        Colors.pink[200],
                        Colors.pink[300],
                        Colors.pink[400],
                        Colors.red
                      ][i],
                      radius: 12,
                    ),
                  ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {
                    // Implement favorite functionality
                  },
                )
              ],
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement add to cart functionality
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple[200],
                    ),
                    child: Text("Add to Cart"),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement order now functionality
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple[300],
                    ),
                    child: Text("Order Now"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
