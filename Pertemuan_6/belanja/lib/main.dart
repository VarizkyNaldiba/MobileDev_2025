import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'pages/home_page.dart';
import 'pages/item_page.dart';
import 'models/item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(name: 'home', path: '/', builder: (context, state) => HomePage()),
      GoRoute(
        name: 'item',
        path: '/item',
        builder: (context, state) {
          final item = state.extra as Item?;
          return ItemPage(item: item);
        },
      ),
    ],
    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Page not found'))),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Belanja',
      routerConfig: _router,
      builder: (context, child) {
        return Scaffold(
          body: child,
          bottomNavigationBar: Container(
            padding: EdgeInsets.all(16),
            color: const Color.fromARGB(255, 0, 0, 0),
            child: Text(
              'Varizky Naldiba Rimra - 2341720243',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
