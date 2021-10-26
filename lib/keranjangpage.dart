import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const KeranjangPage());
}

class KeranjangPage extends StatelessWidget {
  const KeranjangPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Keranjang',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Color.fromRGBO(65, 37, 1, 1)),
        ),
        backgroundColor: Palette.bg1,
      ),
      body: const Center(
        child: Text("Keranjang"),
      ),
    );
  }
}
