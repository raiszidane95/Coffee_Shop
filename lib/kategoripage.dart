import 'package:flutter/material.dart';

void main() {
  runApp(const KategoriPage());
}

class KategoriPage extends StatelessWidget {
  const KategoriPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Favorite Page"),
      ),
    );
  }
}
