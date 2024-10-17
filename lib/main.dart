import 'package:flutter/material.dart';
import 'package:menu_flutter/models/category.dart';
import 'package:menu_flutter/screens/category/category.dart';

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
        backgroundColor: const Color.fromARGB(255, 220, 154, 232),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoryCard(categories[index]);
            }),
      ),
    );
  }
}
