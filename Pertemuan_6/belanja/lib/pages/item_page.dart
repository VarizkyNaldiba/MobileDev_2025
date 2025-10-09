import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  static const routeName = '/item';
  final Item? item;

  const ItemPage({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemArgs = item;
    if (itemArgs == null) {
      return Scaffold(
        appBar: AppBar(title: Text('Item Page')),
        body: Center(child: Text('No item data provided')),
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text('Item Page')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: itemArgs.name,
              child: Image.asset(
                itemArgs.image,
                fit: BoxFit.cover,
                height: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemArgs.name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Price: Rp ${itemArgs.price}',
                    style: TextStyle(fontSize: 18, color: Colors.green[700]),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 6),
                      Text(itemArgs.rating.toString()),
                      Spacer(),
                      Text('Stock: ${itemArgs.stock}'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
