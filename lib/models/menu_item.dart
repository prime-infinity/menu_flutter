/// this is the menuitem class, with self
/// explanatory fields
class MenuItem {
  MenuItem({
    required String name,
    required String description,
    required double price,
    required List<String> images,
  })  : _name = name,
        _description = description,
        _price = price,
        _images = images;

  String _name;
  String _description;
  double _price;
  List<String> _images;

  // Getters
  String get name => _name;
  String get description => _description;
  double get price => _price;
  List<String> get images => List.unmodifiable(_images);

  // Methods to modify the menu item (these could be protected by auth later)
  void updateName(String newName) {
    _name = newName;
  }

  void updateDescription(String newDescription) {
    _description = newDescription;
  }

  void updatePrice(double newPrice) {
    _price = newPrice;
  }

  void addImage(String image) {
    _images.add(image);
  }

  void removeImage(String image) {
    _images.remove(image);
  }
}
