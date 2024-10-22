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
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categories.map((cat) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(horizontal: 26),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0))),
                        onPressed: () {},
                        child: Text(
                          cat.name,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        )),
                  );
                }).toList(),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return CategoryCard(categories[index]);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
