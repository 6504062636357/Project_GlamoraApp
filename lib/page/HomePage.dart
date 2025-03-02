import 'package:flutter/material.dart';
import 'package:untitled5/page/MyProfile.dart';
import 'package:untitled5/page/AboutUsPage.dart';
import 'package:untitled5/page/BeautyTips.dart';
import 'package:untitled5/page/BestSeller.dart';
import 'package:untitled5/page/Categoties.dart';
import 'package:untitled5/page/Promotions.dart';
import 'package:untitled5/page/Status.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage1(),
    routes: {
      '/status': (context) => StatusPage(),
      '/categories': (context) => CategoryPage(),
      '/promotions': (context) => PromotionsPage(),
      '/bestsellers': (context) => BestSellersPage(),
      '/beautytips': (context) => BeautyTipsPage(),
      '/about': (context) => AboutUsPage(),
      '/profile': (context) => MyProfilePage(),
    },
  ));
}

class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2CACA),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFFFDD8E7)),
              child: Text(
                'Menu',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            _drawerItem(context, Icons.system_update, 'Status', '/status'),
            _drawerItem(context, Icons.category, 'Categories', '/categories'),
            _drawerItem(context, Icons.local_offer, 'Promotions', '/promotions'),
            _drawerItem(context, Icons.star, 'Best Sellers', '/bestsellers'),
            _drawerItem(context, Icons.favorite, 'Beauty Tips', '/beautytips'),
            _drawerItem(context, Icons.info, 'About Us', '/about'),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 40, 20, 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2.0),
              borderRadius: BorderRadius.circular(30),
              color: Color(0xFFFDD8E7),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Builder(
                    builder: (context) => IconButton(
                      icon: Icon(Icons.menu, color: Colors.deepPurple[400]),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                    ),
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
                      Navigator.pushNamed(context, '/profile');
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
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/lisa_lipstick.webp',
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Your Product',
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Best Sellers',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        BestSellerItem(
                          name: 'Gorgina',
                          image: 'assets/images/gorgina_lipstick.jpg',
                        ),
                        BestSellerItem(
                          name: 'Shiseido',
                          image: 'assets/images/shiseido_lipstick.jpg',
                        ),
                      ],
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

  ListTile _drawerItem(BuildContext context, IconData icon, String title, String routeName) {
    return ListTile(
      leading: Icon(icon, color: Colors.deepPurple),
      title: Text(title),
      onTap: () {
        Navigator.pop(context); // ปิด Drawer ก่อน
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}

class BestSellerItem extends StatelessWidget {
  final String name;
  final String image;

  const BestSellerItem({Key? key, required this.name, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Image.asset(image, height: 100),
        ],
      ),
    );
  }
}
