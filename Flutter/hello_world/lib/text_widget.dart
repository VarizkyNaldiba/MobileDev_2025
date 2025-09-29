import 'package:flutter/material.dart';

class MyTextwidget extends StatelessWidget {
  const MyTextwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Nama saya Varizky Naldiba Rimra, sedang belajar pemrograman Mobile',
      style: TextStyle(color: Colors.red, fontSize: 14),
      textAlign: TextAlign.center);
  }
}