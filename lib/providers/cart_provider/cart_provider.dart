import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final String title;
  final String price;
  final int quantity;

  CartItem ({
    required this.id,
    required this.title,
    required this.price,
    required this.quantity,
  });

}

class Cart with ChangeNotifier {
   
  Map<String, CartItem> _items = {};

  Map<String, CartItem>get items{
    return {...items};
  }

  void addItem({required String productId, price, title}){
    if(_items.containsKey(productId)){
      _items.update(productId, (value) =>
        CartItem(
          id: value.id, 
          title: value.title, 
          price: value.price, 
          quantity: value.quantity
        )
      );
      notifyListeners();
    }
    else{
    _items.putIfAbsent(productId, ()=> CartItem(
      id: DateTime.now().toString(), 
      title: title.toString(), 
      price: price.toString(), 
      quantity: 1,));
    }
  }



}