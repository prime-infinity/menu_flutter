import 'package:flutter/material.dart';
import 'package:menu_flutter/models/menu_item.dart';

class MenuItemCard extends StatelessWidget {
  const MenuItemCard(this.menuItem, {super.key});

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      //now we are in a menu item
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      child: Column(
        //we create two colums for the up
        //and down, the down will contain
        //the item images as horizontal scroll in container
        children: [
          IntrinsicHeight(
            child: Row(
              //this row is where the item image
              //name,price and description will be
              //the name,price and description will be
              // the second item on the row
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  //image container
                  width: 128,
                  height: 128,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow),
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/images/foods/${menuItem.images.first}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    //remove this container later
                    //price, name and description container
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.green)),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      //this will have two columns, the first will be
                      //a rowfor name and price, and the second will be for
                      //description
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(menuItem.name),
                            Text("\$${menuItem.price}"),
                          ],
                        ),
                        const Spacer(),
                        Text(menuItem.description),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          /*Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
            child: const Text("rest of item images in horizontal scroll"),
          )*/
        ],
      ),
    );
  }
}
