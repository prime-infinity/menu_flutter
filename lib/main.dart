import 'package:flutter/material.dart';
import 'package:menu_flutter/screens/menu/menu_item.dart';

void main() {
  runApp(const MaterialApp(
    home: SandBox(),
  ));
}

class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("sandbox"),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: MenuItem(),
      ),
    );
  }
}
