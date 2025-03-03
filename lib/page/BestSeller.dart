import 'package:flutter/material.dart';

class BestSellersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF69376D), // พื้นหลังสีม่วง
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFFFDD8E7)),
              child: Image.asset(
                'assets/images/logo2.png', // Replace with your logo image path
                fit: BoxFit.contain,
              ),
            ),
            _drawerItem(context, Icons.home, 'Home', '/home'),
            _drawerItem(context, Icons.update, 'Status', '/status'),
            _drawerItem(context, Icons.category, 'Categories', '/categories'),
            _drawerItem(
                context, Icons.local_offer, 'Promotions', '/promotions'),
            _drawerItem(context, Icons.star, 'Best Sellers', '/bestSellers'),
            _drawerItem(context, Icons.favorite, 'Beauty Tips', '/beautyTips'),
            _drawerItem(context, Icons.info, 'About Us', '/about'),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0), // Set border radius to 0
              color: Color(0xFFFDD8E7),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Builder(
                    builder: (context) => IconButton(
                      icon: Icon(Icons.menu, color: Colors.deepPurple[400]),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                    ),
                  ),
                  Image.asset(
                    'assets/images/logo2.png', // Replace with your logo image path
                    height: 40,
                  ),
                  IconButton(
                    icon: Icon(Icons.person_outline,
                        color: Colors.deepPurple[400]),
                    onPressed: () {
                      Navigator.pushNamed(context, '/myProfile');
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Best Sellers',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20),
              children: [
                _buildBestSellerItem(
                  context,
                  image: 'assets/images/dior.jpg',
                  brand: 'Dior',
                  description:
                      'Dior Forever Skin Glow 24h Hydrating\nRadiant Foundation - 30ml',
                  rating: 4.8,
                  reviews: 365,
                  price: '2,900.00',
                ),
                _buildBestSellerItem(
                  context,
                  image:
                      'https://image-optimizer-th.production.sephora-asia.net/images/product_images/closeup_1_Product_840122900037-Rare-Beauty-Soft-Pinch-Liquid-Blush-Grateful_2ba3b88a7cfc09146d5d7fa0f5da9c37172e8b4f_1636606903.png',
                  brand: 'Rare Beauty',
                  description: 'Soft Pinch Liquid Blush - 7.5ml',
                  rating: 4.8,
                  reviews: 17433,
                  price: '1,100.00',
                ),
                _buildBestSellerItem(
                  context,
                  image: 'assets/images/hourglass.webp',
                  brand: 'Hourglass',
                  description: 'Vanish™ Airbrush Concealer',
                  rating: 4.8,
                  reviews: 1182,
                  price: '1,700.00',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBestSellerItem(
    BuildContext context, {
    required String image,
    required String brand,
    required String description,
    required double rating,
    required int reviews,
    required String price,
  }) {
    return GestureDetector(
      onTap: () {
        if (brand == 'Rare Beauty') {
          Navigator.pushNamed(context, '/productDetail');
        }
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            image.startsWith('http')
                ? Image.network(image, width: 60, height: 80)
                : Image.asset(image, width: 60, height: 80),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    brand,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    description,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text('$rating', style: TextStyle(fontSize: 14)),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Text(' $reviews Reviews', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    '$price Bath',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Icon(Icons.favorite_border),
          ],
        ),
      ),
    );
  }

  ListTile _drawerItem(
      BuildContext context, IconData icon, String title, String route) {
    return ListTile(
      leading: Icon(icon, color: Colors.deepPurple),
      title: Text(title),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
