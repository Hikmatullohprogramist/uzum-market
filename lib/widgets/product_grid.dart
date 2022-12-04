import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  final int id;
  final String title;
  final String image;

  ProductGrid(
      {super.key, required this.id, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        backgroundColor: Colors.black26,
        title: Text(
          title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
        ),
      ),
      child: CachedNetworkImage(
        imageUrl: image,
        progressIndicatorBuilder: (context, url, downloadProgress) => Center(
          child: CircularProgressIndicator(value: downloadProgress.progress),
        ),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}
