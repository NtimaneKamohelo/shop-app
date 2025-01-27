import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/providers/product.dart';
import 'package:shopapp/providers/products_provider.dart';
import 'package:shopapp/widgets/grid_product_item.dart';

class Mainshoppingscreen extends StatefulWidget {

  static const id = '/Mainshoppingscreen';
  Mainshoppingscreen({super.key});

  

  @override
  State<Mainshoppingscreen> createState() => _MainshoppingscreenState();
}

class _MainshoppingscreenState extends State<Mainshoppingscreen> {
  bool showFav = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Phone Spaza'),
          actions: [
            PopupMenuButton(
              onSelected: (int selectedVal){
                if(selectedVal == 0) {
                  setState(() {
                    showFav = true;
                  });
                }
                if(selectedVal ==1) {
                  setState(() {
                    showFav = false;
                  });
                }
              },
              icon: Icon(Icons.more_vert),
              itemBuilder: (_) {
                return[
                  PopupMenuItem(
                    child: Text('Filter by favorite'), value: 0),
                  PopupMenuItem(
                    child: Text('remove filters'), value: 1),
                ];
              },
            )
          ],
        ),
        body: productsGrid(isFav: showFav), 
      ),
    );
  }
}

class productsGrid extends StatelessWidget {
  const productsGrid({
    super.key, required this.isFav,
  });

  final bool isFav;

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final availProducts = isFav ? productData.favoriteProducts : productData.availProducts;
    //final availProducts = productData.availProducts;

    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: availProducts.length,
        itemBuilder: (context,index){
          return ChangeNotifierProvider<Product>.value(
            value: availProducts[index],
            //create: (BuildContext context) => availProducts[index],
            child: GridProductItem(
              // id: availProducts[index].id, 
              //title: availProducts[index].title, 
              //image: availProducts[index].image
            ),
          );
        }, 
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1/1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 30,),
    );
  }
}

