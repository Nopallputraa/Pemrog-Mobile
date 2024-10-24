import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/item_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // Define the initial route as HomePage
      routes: {
        '/': (context) => HomePage(), // HomePage as the initial route
        '/item': (context) => ItemPage(), // ItemPage route
      },
    );
  }
}