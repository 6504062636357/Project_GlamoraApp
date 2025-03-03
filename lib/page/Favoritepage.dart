import 'package:flutter/material.dart';
import 'package:untitled5/page/Favoritepage.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);
    final favorites = favoritesProvider.favorites;

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final item = favorites[index];
          return ListTile(
            leading: Image.network(item.imageUrl),
            title: Text(item.title),
            subtitle: Text('${item.price} Bath'),
            trailing: IconButton(
              icon: Icon(Icons.remove_circle),
              onPressed: () {
                favoritesProvider.removeFavorite(item.id);
              },
            ),
          );
        },
      ),
    );
  }
}
