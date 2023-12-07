import 'package:flutter/material.dart';
import 'package:forgotten_mines/views/categories_screen/categories_screen.dart';
import 'package:forgotten_mines/views/items_screen/items_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forgotten Mines',
      routes: {
        'items_screen':(ctx)=> ItemsScreen()
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CategoriesScreen()
      ),
    );
  }
}