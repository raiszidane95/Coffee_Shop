import 'package:flutter/material.dart';

void main() {
  runApp(const TransaksiPage());
}

class TransaksiPage extends StatelessWidget {
  const TransaksiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coffee Shop'),
      ),
      body: const Center(
        child: Text("Landing Page"),
      ),
    );
  }
}
