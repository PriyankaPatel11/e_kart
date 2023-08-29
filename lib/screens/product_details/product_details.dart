import 'package:e_kart/models/product_model/product_model.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final ProductModel singleProduct;
  const ProductDetails({super.key, required this.singleProduct});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
        )
      ]),
      body: Column(
        children: [
          Image.network(
            singleProduct.image,
            height: 400,
            width: 400,
            ),
        ],
      ),
    );
  }
}
