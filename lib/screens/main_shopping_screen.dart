import 'package:flutter/material.dart';
import 'package:shopapp/models/product.dart';
import 'package:shopapp/widgets/grid_product_item.dart';

class Mainshoppingscreen extends StatelessWidget {
  Mainshoppingscreen({super.key});

  final List<Product> availProducts = [
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.builder(
          itemCount: availProducts.length,
            itemBuilder: (context,index){
              return GridProductItem(
                id: availProducts[index].id, 
                title: availProducts[index].title, 
                image: availProducts[index].image
              );
            }, 
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1/1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,),
        ) 
      ),
    );
  }
}

