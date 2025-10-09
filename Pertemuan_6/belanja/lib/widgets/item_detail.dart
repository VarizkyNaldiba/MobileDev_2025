import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemDetail extends StatelessWidget {
  final Item item;

  const ItemDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Hero(
            tag: item.name,
            child: Image.asset(item.image, fit: BoxFit.cover, height: 300),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Price: Rp ${item.price}',
                  style: TextStyle(fontSize: 18, color: Colors.green[700]),
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    SizedBox(width: 6),
                    Text(item.rating.toString()),
                    Spacer(),
                    Text('Stock: ${item.stock}'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
