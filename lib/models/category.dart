import 'package:menu_flutter/models/menu_item.dart';

/// this is the category class, it has a name which is
/// a type string, and a list of menuitems from the menuitems
/// class

class Category {
  Category({required this.name});
  final String name;
  final List<MenuItem> menuItems = [];
}
