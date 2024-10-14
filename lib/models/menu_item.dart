//Menu item class
class MenuItem {
  MenuItem(
      {required this.name, required this.description, required this.price});

  final String name;
  final String description;
  final String price;
}

//dummy menu items
List<MenuItem> menuItems = [
  MenuItem(
      name: "ube pancake",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tristique mi nec semper malesuada. Nulla in mollis metus, ornare aliquam tortor. Pellentesque tempus sapien sit amet lorem lacinia malesuada.",
      price: "15"),
  MenuItem(
      name: "chocochip pancake",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tristique mi nec semper malesuada. Nulla in mollis metus, ornare aliquam tortor. Pellentesque tempus sapien sit amet lorem lacinia malesuada.",
      price: "13"),
  MenuItem(
      name: "new pancate",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tristique mi nec semper malesuada. Nulla in mollis metus, ornare aliquam tortor. Pellentesque tempus sapien sit amet lorem lacinia malesuada.",
      price: "10"),
  MenuItem(
      name: "ube pancake2",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tristique mi nec semper malesuada. Nulla in mollis metus, ornare aliquam tortor. Pellentesque tempus sapien sit amet lorem lacinia malesuada.",
      price: "25"),
  MenuItem(
      name: "xerox chips",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tristique mi nec semper malesuada. Nulla in mollis metus, ornare aliquam tortor. Pellentesque tempus sapien sit amet lorem lacinia malesuada.",
      price: "19"),
  MenuItem(
      name: "native chips",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tristique mi nec semper malesuada. Nulla in mollis metus, ornare aliquam tortor. Pellentesque tempus sapien sit amet lorem lacinia malesuada.",
      price: "14"),
];
