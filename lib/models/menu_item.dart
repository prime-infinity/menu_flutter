/// this is the menuitem class, with self
/// explanatory fields
class MenuItem {
  MenuItem(
      {required this.name,
      required this.description,
      required this.price,
      required this.images});

  final String name;
  final String description;
  final String price;
  final List<String> images;
}
