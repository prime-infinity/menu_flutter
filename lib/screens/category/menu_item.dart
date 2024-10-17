import 'package:flutter/material.dart';

class MenuItemCard extends StatelessWidget {
  const MenuItemCard({super.key});

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
          Row(
            //this row is where the item image
            //name,price and description will be
            //the name,price and description will be
            // the second item on the row
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //image container
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow),
                  /*image: const DecorationImage(
                    image: AssetImage("assets/images/foods/food3.jpg"),
                    fit: BoxFit.cover,
                  ),*/
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Container(
                  //remove this container later
                  //price, name and description container
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.green)),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //this will have two columns, the first will be
                    //a rowfor name and price, and the second will be for
                    //description
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("item name"), Text("item price")],
                      ),
                      SizedBox(height: 4),
                      Text("item description")
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
            child: const Text("rest of item images in horizontal scroll"),
          )
        ],
      ),
    );
  }
}
