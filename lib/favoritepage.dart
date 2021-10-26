import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FavoritePage());
}

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favorite',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Color.fromRGBO(65, 37, 1, 1)),
        ),
        backgroundColor: Palette.bg1,
      ),
      body: const Center(
        child: Text("Favorite Page"),
      ),
    );
  }
}
