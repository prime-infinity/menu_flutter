import 'package:flutter/material.dart';
import 'package:menu_flutter/models/menu_item.dart';

class MenuItemCard extends StatefulWidget {
  const MenuItemCard(this.menuItem, {super.key});

  final MenuItem menuItem;

  @override
  State<MenuItemCard> createState() => _MenuItemCardState();
}

class _MenuItemCardState extends State<MenuItemCard> {
  int _currentImageIndex = 0;
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      //now we are in a menu item
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Column(
        //we create two colums for the up
        //and down, the down will contain
        //the item images as horizontal scroll in container
        children: [
          IntrinsicHeight(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isTapped = !isTapped;
                });
              },
              child: Row(
                //this row is where the item image
                //name,price and description will be
                //the name,price and description will be
                // the second item on the row
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AnimatedSize(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                    child: Container(
                      //image container
                      width: isTapped ? 0 : 128,
                      height: 128,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/foods/${widget.menuItem.images.first}"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  // Use AnimatedContainer for spacing between widgets
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    width: isTapped ? 0 : 8,
                  ),
                  Expanded(
                    child: Container(
                      //remove this container later
                      //price, name and description container
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent)),
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
                              Text(widget.menuItem.name),
                              Text("\$${widget.menuItem.price}"),
                            ],
                          ),
                          const Spacer(),
                          Text(widget.menuItem.description),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          if (widget.menuItem.images.length > 1)
            Column(children: [
              //the container that has the images
              AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                height: isTapped ? 371 : 0,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Stack(children: [
                  PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.menuItem.images.length - 1,
                      onPageChanged: (index) {
                        setState(() {
                          _currentImageIndex = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/foods/${widget.menuItem.images[index + 1]}'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }),
                  Positioned(
                    bottom: 8,
                    left: 0,
                    right: 0,
                    child: //row of indicators
                        Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        widget.menuItem.images.length - 1,
                        (index) => Container(
                          width: 8,
                          height: 8,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentImageIndex == index
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ]),
        ],
      ),
    );
  }
}
