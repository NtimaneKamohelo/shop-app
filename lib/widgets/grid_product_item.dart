import 'package:flutter/material.dart';
import 'package:shopapp/screens/product_detail_screen.dart';

class GridProductItem extends StatelessWidget {
  String id, title,image;

  GridProductItem({
    super.key,
    required this.id,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: GridTile(
        footer: GridTileBar(
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black45,
          leading: IconButton(
            onPressed: () {
      
            }, 
            icon: Icon(Icons.favorite),
          ),
          trailing: IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.shopping_cart)),
        ),
        //Make the images clickable
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailScreen.id);
          },
          child: Image.asset(image),
        ),
      ),
    );
  }
}