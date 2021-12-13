import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final Map product;

  ProductDetail({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Produk'),
      backgroundColor: Palette.bg1,
    ),
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            child: Image.network(product['image_url']),
          ),
        ),
        SizedBox(height: 20,
        ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Text(product['harga'], style: TextStyle(fontSize: 22)),
            ],
        ),
      ),
      ],
    )
    );
  }
}