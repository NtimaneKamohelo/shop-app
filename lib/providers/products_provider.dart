import 'package:flutter/material.dart';

import '../models/product.dart';

class Products with ChangeNotifier {

  /// notify listener alerts widgets that are listening and
  /// using data of this provider.
  /// Alerting them that these widgets, there is change that happened
  /// the data they are using
  ///notifylisteners();

  List<Product> _availProducts = [
    Product(
      id: '1001', 
      title: 'Samsung', 
      description: 'it is a phone', 
      image: 'assets/phone_images/Samsung.jpg', 
      price: 13500,
    ),
    Product(
      id: '1002', 
      title: 'iPhone', 
      description: 'it is a phone', 
      image: 'assets/phone_images/iPhone.jpg', 
      price: 19500,
    ),
    Product(
      id: '1003', 
      title: 'Huawei', 
      description: 'it is a phone', 
      image: 'assets/phone_images/huawei.jpg', 
      price: 9500,
    ),
    Product(
      id: '1004', 
      title: 'LG', 
      description: 'it is a phone', 
      image: 'assets/phone_images/LG.jpg', 
      price: 6500,
    ),
    Product(
      id: '1005', 
      title: 'Xiaomi', 
      description: 'it is a phone', 
      image: 'assets/phone_images/xiaomi.jpg', 
      price: 6500,
    ),
    Product(
      id: '1006', 
      title: 'realme', 
      description: 'it is a phone', 
      image: 'assets/phone_images/realMe.jpg', 
      price: 7500,
    ),
  ];

  //getter function
  List<Product> get availProducts => _availProducts;

  /**void addProduct(value) {
    _availProducts.add(value);
    notifyListeners();
  }*/

  //Providing data to widgets that need data
  

}