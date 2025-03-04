import 'package:flutter/material.dart';

class RareBeautyDetailPage extends StatelessWidget {
  final String productName;
  final String productImage;

  RareBeautyDetailPage({required this.productName, required this.productImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2CACA),
      appBar: AppBar(
        backgroundColor: Color(0xFFFDD8E7),
        title: Text('Rare Beauty'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.deepPurple),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share, color: Colors.deepPurple),
            onPressed: () {
              // Implement share functionality
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Rounded Product Image
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15), // Rounded corners
                child: Image.asset(
                  'assets/images/rare_beauty.jpg',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),

            // Product Title
            Text(
              'Rare Beauty Kind Words Matte Lip Liner',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),

            // Rating
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber),
                Text('4.5'),
                Text(' (20 Reviews)', style: TextStyle(color: Colors.grey)),
              ],
            ),
            SizedBox(height: 16),

            // Color Selection
            Text('Color', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Row(
              children: [
                _colorCircle(Color(0xFFF48FB1)),
                _colorCircle(Color(0xFFE57373)),
                _colorCircle(Color(0xFFF44336)),
                _colorCircle(Color(0xFFD32F2F)),
              ],
            ),
            SizedBox(height: 24),

            // "Add to Cart" and "Order Now" Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implement add to cart
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFCE93D8),
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                  child: Text('Add to Cart', style: TextStyle(fontSize: 16, color: Colors.white)),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implement order now
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFCE93D8),
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                  child: Text('Order Now', style: TextStyle(fontSize: 16, color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _colorCircle(Color color) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade400),
      ),
    );
  }
}