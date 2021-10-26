import 'package:flutter/material.dart';

void main() {
  runApp(const DepanPage());
}

class DepanPage extends StatelessWidget {
  const DepanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Beranda"),
      ),
    );
  }
}
