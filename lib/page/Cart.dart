// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'CartProvider.dart'; // Import CartProvider
//
// class CartPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final cartProvider = Provider.of<CartProvider>(context);
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Cart'),
//       ),
//       body: ListView.builder(
//         itemCount: cartProvider.items.length,
//         itemBuilder: (context, index) {
//           final item = cartProvider.items[index];
//           return ListTile(
//             leading: Image.network(item.imageUrl),
//             title: Text(item.title),
//             subtitle: Text('\$${item.price}'),
//           );
//         },
//       ),
//       bottomNavigationBar: Container(
//         padding: EdgeInsets.all(20),
//         child: Text(
//           'Total: \$${cartProvider.totalAmount}',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }