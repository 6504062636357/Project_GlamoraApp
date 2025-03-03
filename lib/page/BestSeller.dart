import 'package:flutter/material.dart';
import 'package:untitled5/page/BeautyTips.dart';
import 'package:untitled5/page/BestSeller.dart';
import 'package:untitled5/page/Categoties.dart';
import 'package:untitled5/page/MyProfile.dart';
import 'package:untitled5/page/Promotions.dart';
import 'package:untitled5/page/Status.dart';
import 'package:untitled5/page/SignupPage.dart';
import 'package:untitled5/page/AboutUsPage.dart';
import 'package:untitled5/page/Register.dart';
import 'package:untitled5/page/HomePage.dart';
import 'package:untitled5/categoties/makeup/Rarbaeuty.dart'; // Import the ProductDetailPage
import 'package:untitled5/page/CartProvider.dart';
import 'package:untitled5/page/FavoritesProviderPage.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => FavoritesProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Glamora App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage1(),
      routes: {
        '/status': (context) => StatusPage(),
        '/categories': (context) => CategoryPage(),
        '/HomePage': (context) => HomePage1(),
        '/productDetail': (context) => ProductDetailPage(), // Add the route
        '/favorites': (context) =>
            FavoritesPage(), // Add the route for favorites page
      },
    );
  }
}
