import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/models/product.dart';
import 'package:shopapp/providers/products_provider.dart';
import 'package:shopapp/widgets/grid_product_item.dart';

class Mainshoppingscreen extends StatelessWidget {

  static const id = '/ProductDetailScreen';
  Mainshoppingscreen({super.key});



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Phone Spaza'),
        ),
        body: productsGrid() 
      ),
    );
  }
}

class productsGrid extends StatelessWidget {
  const productsGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final availProducts = productData.availProducts;

    return GridView.builder(
      padding: EdgeInsets.all(10),
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
          mainAxisSpacing: 30,),
    );
  }
}

