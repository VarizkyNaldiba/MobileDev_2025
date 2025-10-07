import 'package:flutter/material.dart';

void main() {
  runApp(ItemPage());
}

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Page'),
      ),
      body: Center(
        child: Text('Welcome to the Item Page!'),
      ),
    );
    throw UnimplementedError();
  }
}