import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //now we are in a menu item
      child: Column(
        //we create two colums for the up
        //and down
        children: [
          Row(
            //this row is where the item image
            //name,price and description will be
            //the name,price and description will be
            // the second item on the row
            children: [
              Container(
                //image container
                child: Text("image"),
              ),
              Container(
                //price, name and description container
                child: Column(
                  //this will have two columns, the first will be
                  //a rowfor name and price, and the second will be for
                  //description
                  children: [
                    Row(
                      children: [Text("item name"), Text("item price")],
                    ),
                    Text("item description")
                  ],
                ),
              )
            ],
          ),
          Container(
            color: Colors.amber,
            child: Text("more item images"),
          )
        ],
      ),
    );
  }
}
