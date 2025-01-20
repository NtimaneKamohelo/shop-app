import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/providers/product.dart';
import 'package:shopapp/screens/product_detail_screen.dart';

class GridProductItem extends StatelessWidget {
  //String id, title,image;

  GridProductItem({
    super.key,
    /**required this.id,
    required this.title,
    required this.image,*/
  });

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: GridTile(
        footer: GridTileBar(
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black45,
          leading: IconButton(
            onPressed: () {
              product.toggleIsFav();
            }, 
            icon: product.isFavorite ? Icon(Icons.favorite) : 
              Icon(Icons.favorite_border),
          ),
          trailing: IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.shopping_cart)),
        ),
        //Make the images clickable
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetailScreen.id,
              arguments: product.id,
            );
          },
          child: Image.asset(product.image),
        ),
      ),
    );
  }
}