import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/providers/products_provider.dart';
import 'package:shopapp/screens/main_shopping_screen.dart';
import 'package:shopapp/screens/product_detail_screen.dart';

import 'providers/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
      //Navigation methods
      //To avoid errors while navigating
      //declare this in any important screens
      //Example: String const id = '/ProductDetailScreen'; 
      routes: {
        ProductDetailScreen.id: (c) => const ProductDetailScreen(),
        Mainshoppingscreen.id: (c) => Mainshoppingscreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => Products(),
    child: Mainshoppingscreen());

  }
}