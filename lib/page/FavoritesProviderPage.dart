import 'package:flutter/material.dart';
import 'package:untitled5/models/cart_item.dart';

class FavoritesProvider with ChangeNotifier {
  final List<CartItem> _favorites = [];

  List<CartItem> get favorites => _favorites;

  void addFavorite(CartItem item) {
    _favorites.add(item);
    notifyListeners();
  }

  void removeFavorite(String itemId) {
    _favorites.removeWhere((item) => item.id == itemId);
    notifyListeners();
  }
}
