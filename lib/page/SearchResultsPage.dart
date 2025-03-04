import 'package:flutter/material.dart';

class SearchResultsPage extends StatelessWidget {
  final String query;
  final List<Map<String, String>> items;

  SearchResultsPage({required this.query, required this.items});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> filteredItems = items
        .where(
            (item) => item["name"]!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: filteredItems.map((item) {
            return Card(
              child: ListTile(
                leading: item["image"]!.startsWith('http')
                    ? Image.network(item["image"]!)
                    : Image.asset(item["image"]!),
                title: Text(item["name"]!),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
