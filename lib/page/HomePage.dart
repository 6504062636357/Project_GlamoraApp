import 'package:flutter/material.dart';
import 'package:untitled5/page/MyProfile.dart';
import 'package:untitled5/page/AboutUsPage.dart';
import 'package:untitled5/page/BeautyTips.dart';
import 'package:untitled5/page/BestSeller.dart';
import 'package:untitled5/page/Categoties.dart';
import 'package:untitled5/page/Promotions.dart';
import 'package:untitled5/page/Status.dart';
import 'package:untitled5/page/SearchResultsPage.dart';
import 'package:untitled5/page/gorgina.dart';
import 'package:untitled5/page/Shiseido.dart';
import 'package:untitled5/page/rare_beauty.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage1(),
    routes: {
      '/status': (context) => StatusPage(),
      '/categories': (context) => CategoryPage(),
      '/promotions': (context) => PromotionsPage(),
      '/bestsellers': (context) => Bestseller(name: 'name', image: 'image',),
      '/beautytips': (context) => BeautyTipsPage(),
      '/about': (context) => AboutUsPage(),
      '/profile': (context) => MyProfilePage(),
    },
  ));
}

class HomePage1 extends StatefulWidget {
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  TextEditingController _searchController = TextEditingController();
  List<Map<String, String>> _allItems = [
    {"name": "Gorgina", "image": "assets/images/gorgina_lipstick.jpg"},
    {"name": "Shiseido", "image": "assets/images/shiseido_lipstick.jpg"},
    {"name": "Rare Beauty", "image": "assets/images/rare_beauty.jpg"},
  ];
  List<Map<String, String>> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _filteredItems = _allItems;
    _searchController.addListener(_filterItems);
  }

  @override
  void dispose() {
    _searchController.removeListener(_filterItems);
    _searchController.dispose();
    super.dispose();
  }

  void _filterItems() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      _filteredItems = _allItems
          .where((item) => item["name"]!.toLowerCase().contains(query))
          .toList();
    });
  }

  void _onSearch() {
    String query = _searchController.text;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SearchResultsPage(query: query, items: _allItems),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2CACA),
      appBar: AppBar(
        backgroundColor: Color(0xFFFDD8E7),
        iconTheme: IconThemeData(color: Colors.deepPurple[400]),
        title: Text(
          'GLAMORA',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple[400],
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.person_outline, color: Colors.deepPurple[400]),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFFFDD8E7)),
              child: Image.asset(
                'assets/images/logo2.png',
                fit: BoxFit.contain,
              ),
            ),
            _drawerItem(Icons.system_update, 'Status', '/status'),
            _drawerItem(Icons.category, 'Categories', '/categories'),
            _drawerItem(Icons.local_offer, 'Promotions', '/promotions'),
            _drawerItem(Icons.star, 'Best Sellers', '/bestsellers'),
            _drawerItem(Icons.favorite, 'Beauty Tips', '/beautytips'),
            _drawerItem(Icons.info, 'About Us', '/about'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _buildBanner(),
              SizedBox(height: 20),
              _buildSearchBar(),
              SizedBox(height: 20),
              _buildBestSellersSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBanner() {
    return Container(
      width: double.infinity,
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
          height: 250,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Search Your Product',
          prefixIcon: Icon(Icons.search),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
        onSubmitted: (value) => _onSearch(),
      ),
    );
  }

  Widget _buildBestSellersSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Best Sellers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.pushNamed(context, '/bestsellers');
              },
            ),
          ],
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _allItems.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the product detail page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          // Determine which detail page to show based on the index
                          switch (index) {
                            case 0:
                              return GorginaLipstickDetailPage(
                                productName: _allItems[index]["name"]!,
                                productImage: _allItems[index]["image"]!,
                              );
                            case 1:
                              return ShiseidoLipstickDetailPage(
                                productName: _allItems[index]["name"]!,
                                productImage: _allItems[index]["image"]!,
                              );
                            case 2:
                              return RareBeautyDetailPage(
                                productName: _allItems[index]["name"]!,
                                productImage: _allItems[index]["image"]!,
                              );
                            default:
                              return Container(); // Or an error page
                          }
                        },
                      ),
                    );
                  },
                  child: Bestseller(
                    name: _allItems[index]["name"]!,
                    image: _allItems[index]["image"]!,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  ListTile _drawerItem(IconData icon, String title, String routeName) {
    return ListTile(
      leading: Icon(icon, color: Colors.deepPurple),
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}
