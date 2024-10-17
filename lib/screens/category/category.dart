import 'package:flutter/material.dart';
import 'package:menu_flutter/models/category.dart';
import 'package:menu_flutter/screens/category/menu_item.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(this.category, {super.key});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.black,
      )),
      child: const Column(
        //this column is for the main categories
        //we do it this way so we can display the
        //categoty name first and then the menu items after
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("category name"),
          SizedBox(
            height: 5,
          ),
          MenuItemCard()
        ],
      ),
    );
  }
}
