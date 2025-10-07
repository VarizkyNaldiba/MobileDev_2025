import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Nama saya Varizky Naldiba Rimra, sedang belajar pemrograman Mobile',
      style: TextStyle(
        color: Colors.red,
        fontSize: 14,
        decoration: TextDecoration.underline,
      ),
      textAlign: TextAlign.center,
    );
  }
}
