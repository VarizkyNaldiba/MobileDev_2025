import 'package:flutter/material.dart';
import '../models/item.dart';

class ProductCard extends StatelessWidget {
  final Item item;
  final VoidCallback? onTap;

  const ProductCard({Key? key, required this.item, this.onTap})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 6,
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                child: Hero(
                  tag: item.name,
                  child: Image.asset(item.image, fit: BoxFit.cover),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Rp ${item.price}',
                      style: TextStyle(color: Colors.green[700]),
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 14,
                          color: const Color.fromARGB(255, 232, 176, 8),
                        ),
                        SizedBox(width: 4),
                        Text(item.rating.toString()),
                        Spacer(),
                        Text(
                          'Stock: ${item.stock}',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
