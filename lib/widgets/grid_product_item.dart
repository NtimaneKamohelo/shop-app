import 'package:flutter/material.dart';

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
    return GridTile(
      child: Image.asset(image),
    );
  }
}