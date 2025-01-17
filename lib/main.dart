import 'package:flutter/material.dart';
import 'package:shopapp/screens/main_shopping_screen.dart';
import 'package:shopapp/screens/product_detail_screen.dart';

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
      home: Mainshoppingscreen(),
      //Navigation methods
      //To avoid errors while navigating
      //declare this in any important screens
      //Example: String const id = '/ProductDetailScreen'; 
      routes: {
         ProductDetailScreen.id: (c) => ProductDetailScreen(),
        Mainshoppingscreen.id: (c) => Mainshoppingscreen(),
      },
    );
  }
}