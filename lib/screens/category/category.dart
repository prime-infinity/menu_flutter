import 'package:flutter/material.dart';
import 'package:menu_flutter/screens/category/menu_item.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          MenuItem()
        ],
      ),
    );
  }
}
